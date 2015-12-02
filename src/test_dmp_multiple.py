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
import baxter_interface
import baxter_external_devices

#from baxter_interface import CHECK_VERSION
from baxter_interface import Gripper

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

    pickup_type = sys.argv[1]
    pickup_marker = sys.argv[2]
    #Create a DMP from a 2-D trajectory
    dims = 7                
    dt = 1.0                
    K = 100                 
    D = 2.0 * np.sqrt(K)      
    num_bases = 4
    traj = []
    
    lateral_grip_orient = [0.671, 0.281, 0.659, -0.191]
    vertical_grip_orient = [0.923, 0.180, 0.327, -0.090] # needs to be changed

    lateral_dmp_record_file = 'record_files_test/record_file_new_lat'
    vertical_dmp_record_file = 'record_files_test/record_file_new_ver' # needs to be changed

    lateral_magic_numbers = [-0.015, -0.072, 0.037]
    vertical_magic_numbers = [-0.019, -0.055, 0.103]

    if pickup_type == "vertical":
        grip_orient = vertical_grip_orient
        dmp_record_file = vertical_dmp_record_file
        magic_numbers = vertical_magic_numbers
    elif pickup_type == "lateral":
        grip_orient = lateral_grip_orient
        dmp_record_file = lateral_dmp_record_file
        magic_numbers = lateral_magic_numbers
    else:
        print "ERROR : UNKNOWN PICKUP TYPE< EXITING >>>>>>>>>>>>>>>>>>"
        exit(0)

    with open(dmp_record_file) as tr_fd:
        for line in tr_fd:
             traj.append([float(i) for i in line.strip().split(',')])

    listener = tf.TransformListener()

    resp = makeLFDRequest(dims, traj, dt, K, D, num_bases)

    #Set it as the active DMP
    makeSetActiveRequest(resp.dmp_list)

    #Now, generate a plan
    try:
        initial_pos, initial_orient = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))
    except:
        time.sleep(1)
        initial_pos, initial_orient = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))
    init = list(initial_pos) + list (initial_orient)
    init_dot = [0.0,0.0,0.0,0.0,0.0,0.0,0.0]   
    t_0 = 0                

    try:
        goal_pos, goal_orient = listener.lookupTransform('/base', '/ar_marker_8', rospy.Time(0))         #Plan to a different goal than demo
    except:
        time.sleep(1)
        goal_pos, goal_orient = listener.lookupTransform('/base', '/ar_marker_8', rospy.Time(0))

    goal = list(goal_pos) + list(grip_orient)
#    goal = list(goal_pos) + list(initial_orient)
    goal_thresh = [0,0,0,0,0,0,0]

    seg_length = -1          #Plan until convergence to goal
    tau = 2 * resp.tau       #Desired plan should take twice as long as demo
    dt = 1.0
    integrate_iter = 5       #dt is rather large, so this is > 1 

    print ("starting planning") 
    plan = makePlanRequest(init, init_dot, t_0, goal, goal_thresh, 
                           seg_length, tau, dt, integrate_iter)
    print ("planning completed") 

    #print plan
    print "============ Starting tutorial setup"

    # Now we move onto the moveit stuff
    moveit_commander.roscpp_initialize(sys.argv)
    robot = moveit_commander.RobotCommander()
    group = moveit_commander.MoveGroupCommander("right_arm")
    display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                                   moveit_msgs.msg.DisplayTrajectory, queue_size=10)

    # This list shall contain all the important waypoints in the future plan
    waypoints = []

    curr_pose = group.get_current_pose().pose

    for point in plan.plan.points:
        tmp_pose = geometry_msgs.msg.Pose()
        step = list(point.positions)
        tmp_pose.orientation.x = step[3]
        tmp_pose.orientation.y = step[4]
        tmp_pose.orientation.z = step[5] 
        tmp_pose.orientation.w = step[6]
        tmp_pose.position.x = step[0] + magic_numbers[0]
        tmp_pose.position.y = step[1] + magic_numbers[1]
        tmp_pose.position.z = step[2] + magic_numbers[2]
        waypoints.append(copy.deepcopy(tmp_pose))

    #waypoints[-1].orientation.x = goal_orient[0]
    #waypoints[-1].orientation.y = goal_orient[1]
    #waypoints[-1].orientation.z = goal_orient[2]
    #waypoints[-1].orientation.w = goal_orient[3]
    #group.set_pose_target(waypoints[-1])
    (move_plan, fraction) = group.compute_cartesian_path(
                             waypoints,   # waypoints to follow
                             0.01,        # eef_step
                             0.0)         # jump_threshold

    # There should be some test here involving the fraction
    output = StringIO.StringIO()
    move_plan.serialize(output)

    # Baxter I command thee to open thy grippers
    right_gripper = Gripper('right')
    time.sleep(1)
    right_gripper.open([])
    time.sleep(3)
    
    # Please do not uncomment this, if you do not know what you are doing
    # Beware for the truth crusader is watching you
    group._g.execute(output.getvalue())

    # Baxter I command thee to close thy gripper
    time.sleep(3)
    right_gripper.close([])
    time.sleep(2)

