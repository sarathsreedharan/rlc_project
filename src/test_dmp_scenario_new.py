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

    #pickup_type = sys.argv[1]
    #pickup_marker = sys.argv[2]
    #Create a DMP from a 2-D trajectory

    # Scenario, baxter offering you a on the rocks drink
    # 1. pickup the ice
    #    1.a store initial state and orientation
    #    1.b vertical dmp to ar_marker_10
    #    1.c close grip
    # 2. Move to cup
    #    2.a Move to initial state
    #    2.b moveit to marker ar_marker_9
    #    2.c open grip
    # 3. Moveit to initial state
    # 4. Use DMP to do a lateral pickup


    dims = 7                
    dt = 1.0                
    K = 100                 
    D = 2.0 * np.sqrt(K)      
    num_bases = 4
    traj = []
    
    ice_cube_marker = "ar_marker_10"
    glass_marker = "ar_marker_9"
    cup_marker = "ar_marker_8"

    drop_height = 0.13

    lateral_grip_orient = [0.744, 0.114, 0.644, -0.133] #[0.712, 0.143, 0.674, -0.133]#[0.671, 0.281, 0.659, -0.191]
    vertical_grip_orient = [0.923, 0.180, 0.327, -0.090] # needs to be changed
    pour_start_gripper = [0.692, 0.239, 0.667, -0.141]
    pour_grip = [0.374, 0.625, 0.602, 0.328]

    lateral_dmp_record_file = 'record_files_test/record_file_new_lat'
    vertical_dmp_record_file = 'record_files_test/record_file_new_ver' # needs to be changed

    lateral_magic_numbers = [-0.009, -0.075, 0.025] #[-0.043, -0.074, 0.039] #[-0.020, -0.071, 0.053] #[-0.015, -0.072, 0.037]
    vertical_magic_numbers = [-0.019, -0.055, 0.093]
    drop_magic_numbers = [-0.029, -0.087, 0.238]
    pour_magic_numbers = [0.0, -0.15, 0.146] #[0.029, -0.163, 0.148] #[0.026, 0.158, 0.132] #[0.026, -0.170, 0.139]
    #if pickup_type == "vertical":
    #    grip_orient = vertical_grip_orient
    #    dmp_record_file = vertical_dmp_record_file
    #    magic_numbers = vertical_magic_numbers
    #elif pickup_type == "lateral":
    #    grip_orient = lateral_grip_orient
    #    dmp_record_file = lateral_dmp_record_file
    #    magic_numbers = lateral_magic_numbers
    #else:
    #    print "ERROR : UNKNOWN PICKUP TYPE< EXITING >>>>>>>>>>>>>>>>>>"
    #    exit(0)

    # Perform step 1
     # Now we move onto the moveit stuff
    moveit_commander.roscpp_initialize(sys.argv)
    robot = moveit_commander.RobotCommander()
    group = moveit_commander.MoveGroupCommander("right_arm")
    display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                                   moveit_msgs.msg.DisplayTrajectory, queue_size=10)

    # This list shall contain all the important waypoints in the future plan
    waypoints = []
   
    listener = tf.TransformListener()
    # perform 1.a
    try:
        initial_pos, initial_orient = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))
    except:
        time.sleep(1)
        initial_pos, initial_orient = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))

    # 4. execute lateral DMP

    try:
        new_initial_pos, new_initial_orient = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))
    except:
        time.sleep(1)
        new_initial_pos, new_initial_orient = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))

    traj = []
    with open(lateral_dmp_record_file) as tr_fd:
        for line in tr_fd:
             traj.append([float(i) for i in line.strip().split(',')])


    resp = makeLFDRequest(dims, traj, dt, K, D, num_bases)
    new_init = list(initial_pos) + list (initial_orient)
    init = list(initial_pos) + list (initial_orient)
    #init_dot = [0.0,0.0,0.0,0.0,0.0,0.0,0.0]   

    init_dot = [0.0,0.0,0.0,0.0,0.0,0.0,0.0]   
    #Set it as the active DMP
    makeSetActiveRequest(resp.dmp_list)

    try:
        cup_pos, cup_orient = listener.lookupTransform('/base', cup_marker, rospy.Time(0))         #Plan to a different cup than demo
    except:
        time.sleep(1)
        cup_pos, cup_orient = listener.lookupTransform('/base', cup_marker, rospy.Time(0))

    cup = list(cup_pos) + list(lateral_grip_orient)
#    ice_cube = list(ice_cube_pos) + list(initial_orient)
    cup_thresh = [0,0,0,0,0,0,0]

    seg_length = -1          #Plan until convergence to ice_cube
    tau = 2 * resp.tau       #Desired plan should take twice as long as demo
    dt = 1.0
    integrate_iter = 5       #dt is rather large, so this is > 1 

    t_0 = 0                
    print ("starting planning")
    plan = makePlanRequest(new_init, init_dot, t_0, cup, cup_thresh,
                           seg_length, tau, dt, integrate_iter)
    print ("planning completed")

    waypoints = []

    curr_pose = group.get_current_pose().pose
    last_step = None
    for point in plan.plan.points:
        tmp_pose = geometry_msgs.msg.Pose()
        step = list(point.positions)
        last_step = step
        tmp_pose.orientation.x = step[3]
        tmp_pose.orientation.y = step[4]
        tmp_pose.orientation.z = step[5]
        tmp_pose.orientation.w = step[6]
        tmp_pose.position.x = step[0] + lateral_magic_numbers[0]
        tmp_pose.position.y = step[1] + lateral_magic_numbers[1]
        tmp_pose.position.z = step[2] + lateral_magic_numbers[2]
        waypoints.append(copy.deepcopy(tmp_pose))


    #waypoints[-1].position.x = last_step[0] + lateral_magic_numbers[0]
    #waypoints[-1].position.y = last_step[1] + lateral_magic_numbers[1]
    #waypoints[-1].position.z = last_step[2] + lateral_magic_numbers[2]
    

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

    #    1.c close grip
    # Baxter I command thee to close thy gripper
    time.sleep(3)
    right_gripper.close([])
    time.sleep(2)

    # 5. Move back
    return_pos = geometry_msgs.msg.Pose()
    return_pos.position.x = init[0]
    return_pos.position.y = init[1]
    return_pos.position.z = init[2]  
    return_pos.orientation.x = init[3]
    return_pos.orientation.y = init[4]
    return_pos.orientation.z = init[5]
    return_pos.orientation.w = init[6]

    group.clear_pose_targets()
    group.set_pose_target(return_pos)
    group.go(wait=True)
    
    group.clear_pose_targets()
    time.sleep(2) 
    # 6. Go to glass
    try:
        glass_pos, glass_orient = listener.lookupTransform('/base', glass_marker, rospy.Time(0))         #Plan to a different glass than demo
    except:
        time.sleep(1)
        glass_pos, glass_orient = listener.lookupTransform('/base', glass_marker, rospy.Time(0))
   
    pour_pos = geometry_msgs.msg.Pose()
    pour_pos.position.x = glass_pos[0] + pour_magic_numbers[0]
    pour_pos.position.y = glass_pos[1] + pour_magic_numbers[1]
    pour_pos.position.z = glass_pos[2] + pour_magic_numbers[2]
    pour_pos.orientation.x = lateral_grip_orient[0]
    pour_pos.orientation.y = lateral_grip_orient[1]
    pour_pos.orientation.z = lateral_grip_orient[2]
    pour_pos.orientation.w = lateral_grip_orient[3]

    group.set_pose_target(pour_pos)
    group.go(wait=True)
    time.sleep(1)


    # 7. pour to glass
    pour_pos.orientation.x = pour_grip[0]
    pour_pos.orientation.y = pour_grip[1]
    pour_pos.orientation.z = pour_grip[2]
    pour_pos.orientation.w = pour_grip[3]
    group.clear_pose_targets()
    group.set_pose_target(pour_pos)
    group.go(wait=True)
    time.sleep(1)

    # 7. return from pouring
    pour_pos.orientation.x = init[3]
    pour_pos.orientation.y = init[4]
    pour_pos.orientation.z = init[5]
    pour_pos.orientation.w = init[6]
    group.clear_pose_targets()
    group.set_pose_target(pour_pos)
    group.go(wait=True)
    time.sleep(1)

    # 8. Move back
    group.clear_pose_targets()
    group.set_pose_target(return_pos)
    group.go(wait=True)

    group.clear_pose_targets()

    # perform 1.b
    with open(vertical_dmp_record_file) as tr_fd:
        for line in tr_fd:
             traj.append([float(i) for i in line.strip().split(',')])


    resp = makeLFDRequest(dims, traj, dt, K, D, num_bases)

    #Set it as the active DMP
    makeSetActiveRequest(resp.dmp_list)

    #Now, generate a plan

    try:
        ice_cube_pos, ice_cube_orient = listener.lookupTransform('/base', ice_cube_marker, rospy.Time(0))         #Plan to a different ice_cube than demo
    except:
        time.sleep(1)
        ice_cube_pos, ice_cube_orient = listener.lookupTransform('/base', ice_cube_marker, rospy.Time(0))

    ice_cube = list(ice_cube_pos) + list(vertical_grip_orient)
#    ice_cube = list(ice_cube_pos) + list(initial_orient)
    ice_cube_thresh = [0,0,0,0,0,0,0]

    seg_length = -1          #Plan until convergence to ice_cube
    tau = 2 * resp.tau       #Desired plan should take twice as long as demo
    dt = 1.0
    integrate_iter = 5       #dt is rather large, so this is > 1 

    print ("starting planning") 
    plan = makePlanRequest(init, init_dot, t_0, ice_cube, ice_cube_thresh, 
                           seg_length, tau, dt, integrate_iter)
    print ("planning completed") 

    #print plan
    print "============ Starting tutorial setup"


    curr_pose = group.get_current_pose().pose

    for point in plan.plan.points:
        tmp_pose = geometry_msgs.msg.Pose()
        step = list(point.positions)
        tmp_pose.orientation.x = step[3]
        tmp_pose.orientation.y = step[4]
        tmp_pose.orientation.z = step[5] 
        tmp_pose.orientation.w = step[6]
        tmp_pose.position.x = step[0] + vertical_magic_numbers[0]
        tmp_pose.position.y = step[1] + vertical_magic_numbers[1]
        tmp_pose.position.z = step[2] + vertical_magic_numbers[2]
        waypoints.append(copy.deepcopy(tmp_pose))

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

    #    1.c close grip
    # Baxter I command thee to close thy gripper
    time.sleep(3)
    right_gripper.close([])
    time.sleep(2)


    # WOHOOO
    # Moving onto step 2
    # 2.a Move to initial state

    group.set_pose_target(return_pos)
    group.go(wait=True)
    time.sleep(1)
    group.clear_pose_targets()

   # 2.b Move to glass


    drop_pos = geometry_msgs.msg.Pose()
    drop_pos.position.x = glass_pos[0] + drop_magic_numbers[0]
    drop_pos.position.y = glass_pos[1] + drop_magic_numbers[1]
    drop_pos.position.z = glass_pos[2] + drop_magic_numbers[2]
    drop_pos.orientation.x = init[3]
    drop_pos.orientation.y = init[4]
    drop_pos.orientation.z = init[5]
    drop_pos.orientation.w = init[6]

    group.set_pose_target(drop_pos)
    group.go(wait=True)
    time.sleep(1)
    right_gripper.open([])
    time.sleep(3)

    # WOHOOO MOVING ON
    # 3. Move back
    group.clear_pose_targets()
    group.set_pose_target(return_pos)
    group.go(wait=True)
    
    group.clear_pose_targets()


