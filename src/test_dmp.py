#!/usr/bin/env python
import roslib; 
roslib.load_manifest('dmp')
import rospy 
import numpy as np
from dmp.srv import *
from dmp.msg import *
import tf
import time
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import copy
import StringIO
#Learn a DMP from demonstration data
def makeLFDRequest(dims, traj, dt, K_gain, 
                   D_gain, num_bases):
    demotraj = DMPTraj()

    for i in range(len(traj)):
        pt = DMPPoint();
        pt.positions = traj[i]
        demotraj.points.append(pt)
        demotraj.times.append(dt*i)
            
    k_gains = [K_gain]*dims
    d_gains = [D_gain]*dims
        
    print "Starting LfD..."
    rospy.wait_for_service('learn_dmp_from_demo')
    print ("we are here")
    try:
        lfd = rospy.ServiceProxy('learn_dmp_from_demo', LearnDMPFromDemo)
        resp = lfd(demotraj, k_gains, d_gains, num_bases)
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e
    print "LfD done"    
            
    return resp;


#Set a DMP as active for planning
def makeSetActiveRequest(dmp_list):
    try:
        sad = rospy.ServiceProxy('set_active_dmp', SetActiveDMP)
        sad(dmp_list)
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e


#Generate a plan from a DMP
def makePlanRequest(x_0, x_dot_0, t_0, goal, goal_thresh, 
                    seg_length, tau, dt, integrate_iter):
    print "Starting DMP planning..."
    rospy.wait_for_service('get_dmp_plan')
    try:
        gdp = rospy.ServiceProxy('get_dmp_plan', GetDMPPlan)
        resp = gdp(x_0, x_dot_0, t_0, goal, goal_thresh, 
                   seg_length, tau, dt, integrate_iter)
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e
    print "DMP planning done"   
            
    return resp;


if __name__ == '__main__':
    rospy.init_node('dmp_tutorial_node')

    #Create a DMP from a 2-D trajectory
    dims = 7                
    dt = 1.0                
    K = 100                 
    D = 2.0 * np.sqrt(K)      
    num_bases = 4
    #for i in range(1,11):
    traj = []
    with open('record_files_test/record_file_new_move_fwd') as tr_fd:
        for line in tr_fd:
             traj.append([float(i) for i in line.strip().split(',')])
    #traj = [[1.0,1.0],[2.0,2.0],[3.0,4.0],[6.0,8.0]]
    #print len(traj[0])
    listener = tf.TransformListener()
    print ("starting learning") 
    resp = makeLFDRequest(dims, traj, dt, K, D, num_bases)
    print ("learning completed") 

    #Set it as the active DMP
    makeSetActiveRequest(resp.dmp_list)
    drop_magic_numbers = [0.029, -0.163, 0.228]#[-0.029, -0.087, 0.238]
    #Now, generate a plan
    try:
        trans, quat = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))
    except:
        time.sleep(1)
        trans, quat = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))

    try:
        trans2, quat2 = listener.lookupTransform('/base', '/ar_marker_9', rospy.Time(0))
    except:
        time.sleep(1)
        trans2, quat2 = listener.lookupTransform('/base', '/ar_marker_9', rospy.Time(0))

    #x_0 = [0.0,0.0]          #Plan starting at a different point than demo 
    x_0 = list(trans) + list (quat)
    print (x_0)
    x_dot_0 = [0.0,0.0,0.0,0.0,0.0,0.0,0.0]   
    t_0 = 0                
    #try:
    #     trans2, quat2 = listener.lookupTransform('/base', '/ar_marker_8', rospy.Time(0))         #Plan to a different goal than demo
    #except:
    #    time.sleep(1)
    #    trans2, quat2 = listener.lookupTransform('/base', '/ar_marker_8', rospy.Time(0))
#    trans2= (0.492, -0.791, 0.659)
#    quat2 = (-0.407, 0.643, -0.018, 0.649)
#- Translation: [1.101, -0.214, 0.214]
#- Rotation: in Quaternion [-0.156, 0.765, 0.069, 0.621]
#- Translation: [0.979, -0.295, 0.200]
#- Rotation: in Quaternion [-0.331, 0.752, 0.137, 0.553]
#- Translation: [0.998, -0.300, 0.289]
#- Rotation: in Quaternion [0.738, 0.119, 0.654, -0.115]
    #trans2= (0.998, -0.300, 0.289)
    #quat2 = (0.738, 0.119, 0.654, -0.115)
    goal = list(trans2) + list (quat)
    goal_thresh = [0,0,0,0,0,0,0]
    print (goal)
    seg_length = -1          #Plan until convergence to goal
    tau = 2 * resp.tau       #Desired plan should take twice as long as demo
    dt = 1.0
    integrate_iter = 5       #dt is rather large, so this is > 1 
    print ("starting planning") 
    plan = makePlanRequest(x_0, x_dot_0, t_0, goal, goal_thresh, 
                           seg_length, tau, dt, integrate_iter)
    print ("planning completed") 

    #print plan
    print "============ Starting tutorial setup"
    moveit_commander.roscpp_initialize(sys.argv)
    #rospy.init_node('move_group_python_interface_tutorial',
    #                anonymous=True)
    robot = moveit_commander.RobotCommander()
    group = moveit_commander.MoveGroupCommander("right_arm")
    display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                                   moveit_msgs.msg.DisplayTrajectory, queue_size=10)

    waypoints = []

    # start with the current pose
    #waypoints.append(group.get_current_pose().pose)

    #wpose = geometry_msgs.msg.Pose()
    # first orient gripper and move forward (+x)
    for p1 in plan.plan.points:
    #p1 = plan.plan.points[-1]
    #step = goal
        wpose = geometry_msgs.msg.Pose()
    	step = list(p1.positions)
        wpose.orientation.x = step[3]
        wpose.orientation.y = step[4]
        wpose.orientation.z = step[5] 
        wpose.orientation.w = step[6]
        wpose.position.x = step[0] + drop_magic_numbers[0]
        wpose.position.y = step[1] + drop_magic_numbers[1]
        wpose.position.z = step[2] + drop_magic_numbers[2]
    #group.set_pose_target(wpose)
    #pla = group.plan()
    #group.go(wait=True)
    #time.sleep(2)
       #group.clear_pose_targets()
        waypoints.append(copy.deepcopy(wpose))

    # second move down
    #wpose.position.z -= 0.10
    #waypoints.append(copy.deepcopy(wpose))

    # third move to the side
    #wpose.position.y += 0.05
    #waypoints.append(copy.deepcopy(wpose))
    #wpose = geometry_msgs.msg.Pose()
    #wpose.orientation.w = 1.0
    #wpose.position.x = waypoints[0].position.x + 0.1
    #wpose.position.y = waypoints[0].position.y
    #wpose.position.z = waypoints[0].position.z
    #waypoints.append(copy.deepcopy(wpose))

    # second move down
    #wpose.position.z -= 0.10
    #waypoints.append(copy.deepcopy(wpose))

    # third move to the side
    #wpose.position.y += 0.05
    waypoints.append(copy.deepcopy(wpose))
    (plan2, fraction) = group.compute_cartesian_path(
                             waypoints,   # waypoints to follow
                             0.01,        # eef_step
                             0.0)         # jump_threshold

#    group.set_pose_target(wpose)
#    group.go(wait=True)
    #print plan2
    #rospy.sleep(5)
    #group.go(joints = plan2)
    #print "============ Waiting while RVIZ displays plan3..."
    #rospy.sleep(5)
    output = StringIO.StringIO()
    plan2.serialize(output)
    group._g.execute(output.getvalue())
