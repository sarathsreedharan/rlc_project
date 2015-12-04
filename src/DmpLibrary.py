#
# >>> TODO:INSERT LICESE HEADER
#
"""
The class resposible for executing various dmps, the dmps are provided by
ros package dmp (http://wiki.ros.org/dmp), owes its existence to the
tutorial provided by the package
"""
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
from baxter_interface import Gripper


LATERAL_RECORD_FILE = "record_files_test/record_file_new_lat"
VERTICAL_RECORD_FILE = "record_files_test/record_file_new_ver"
RETURN_RECORD_FILE = "record_files_test/record_file_new_return"

# A BUNCH OF CONSTANTS
## TODO: Should I move it to a config file
# A collections of grips
LATERAL_GRIP_ORIENT = [0.695, 0.266, 0.624, -0.238] #[0.744, 0.114, 0.644, -0.133] #[0.712, 0.143, 0.674, -0.133]#[0.671, 0.281, 0.659, -0.191]
VERTICAL_GRIP_ORIENT = [0.990, 0.139, 0.015, -0.006] #[0.923, 0.180, 0.327, -0.090] # NEEDS TO BE CHANGED
POUR_START_GRIPPER = [0.692, 0.239, 0.667, -0.141]
POUR_GRIP = [0.374, 0.625, 0.602, 0.328]
PLACE_GRIP_ORIENT = [0.834, 0.544, 0.082, 0.046]

# marker gripper deltas
LATERAL_GRASP_DELTA = [-0.026, -0.1, 0.048]
MARKER10_GRASP_DELTA = [-0.002, -0.060, 0.121]
MARKER8_GRASP_DELTA = [-0.088, -0.051, 0.109]#[-0.002, -0.060, 0.191]
DROP_GRASP_DELTA = [-0.029, -0.087, 0.238]
POUR_GRASP_DELTA = [0.029, -0.163, 0.228]
PLACE_GRASP_DELTA = [-0.146, -0.128, 0.258]
RETURN_DELTA = [0, 0, 0.030]


class DmpLibrary(object):
    """
        The DMP Library class, currently supports the following DMPs
        * Lateral grip
        * Overhead grip
        * return
        Current non DMP actions that are supported
        * pour
        constructor:
            required arg -> 
                dmp_record_file_dir : Path to the directory with dmp record files
            optional arg ->
                dmp_dims : The dimensions of the dmp to be trained (default: 7)
                lateral_record_file : Name of the lateral record file (Default: lat_record_file)
                vertical_record_file : Name of the vertical record file (Default: ver_record_file)
                return_record_file : Name of the return record file (Default: return_record_file)
                dummy : If set true, it will not execute but will only plan (Default: False)
                
    """
    

    def __init__(self, dmp_record_file_dir, dmp_dims=7,
                 lateral_record_file=LATERAL_RECORD_FILE,
                 vertical_record_file=VERTICAL_RECORD_FILE,
                 return_record_file=RETURN_RECORD_FILE, dummy=False):
        self.K = 100 # Spring constant, value taken from http://wiki.ros.org/dmp
        self.D = 2.0 * np.sqrt(self.K) # Damping constant, value taken from http://wiki.ros.org/dmp
        self.dt = 1.0 # Time resolution, Value taken from http://wiki.ros.org/dmp
        self.num_bases = 4 # No of basis functions, value taken from http://wiki.ros.org/dmp
   
        self.dmp_record_file_dir = dmp_record_file_dir
        self.dmp_dims = dmp_dims
        self.lateral_record_file = lateral_record_file
        self.vertical_record_file = vertical_record_file
        self.return_record_file = return_record_file    
        self.dummy = dummy
        self.tf_listener = tf.TransformListener()
        # the init velocity and goal threshold doesn't change across dmps, so just store them now
        self.init_dot = []
        for i in range(self.dmp_dims):
            self.init_dot.append(0)
        self.goal_thresh = []
        for i in range(self.dmp_dims):
            self.goal_thresh.append(0)
        # Initialize move it group
        moveit_commander.roscpp_initialize(sys.argv)
        self.robot = moveit_commander.RobotCommander()
        self.group = moveit_commander.MoveGroupCommander("right_arm")
        self.display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                                            moveit_msgs.msg.DisplayTrajectory, queue_size=10)
        self.integrate_iter = 5       # value taken from http://wiki.ros.org/dmp
        self.seq_length = -1
        self.right_gripper = Gripper('right')

        # save the initial state
        try:
            self.init_pos, self.init_orient = self.tf_listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))         #Plan to a different cup than demo
        except:
            time.sleep(1)
            self.init_pos, self.init_orient = self.tf_listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))
        
    

    
    def getDMPplan(self, start_state, traj, goal):
        """
            Function provided by the tutorial http://wiki.ros.org/dmp
        """
        demotraj = DMPTraj()
            
        for i in range(len(traj)):
            pt = DMPPoint();
            pt.positions = traj[i]
            demotraj.points.append(pt)
            demotraj.times.append(self.dt*i)
                
        k_gains = [self.K]*self.dmp_dims
        d_gains = [self.D]*self.dmp_dims
            
        try:
            # Learn from the trajectory (can probably move it to a dictionary)
            rospy.wait_for_service('learn_dmp_from_demo')
            learner_service = rospy.ServiceProxy('learn_dmp_from_demo', LearnDMPFromDemo)
            learned_dmp = learner_service(demotraj, k_gains, d_gains, self.num_bases)


            # Make the new dmp the current one
            rospy.wait_for_service('set_active_dmp')
            sad = rospy.ServiceProxy('set_active_dmp', SetActiveDMP)
            sad(learned_dmp.dmp_list)

            # Return a plan for the dmp
            rospy.wait_for_service('get_dmp_plan')
            gdp = rospy.ServiceProxy('get_dmp_plan', GetDMPPlan)
            plan = gdp(start_state, self.init_dot, 0, goal, self.goal_thresh, 
                       self.seq_length, 2* learned_dmp.tau, self.dt, self.integrate_iter)

        except rospy.ServiceException, e:
            print "There was an issue, with the service"%e
                
        return plan;

    def execute_dmp(self, dmp_name, src_marker="right_gripper", destination_marker="right_gripper"):
        """
            Execute the specified dmp or non dmp action
        """
	try:
            dmp_func = getattr(self, dmp_name)
        except:
            print "Unknown DMP please check again", locals()
            return False
        status = dmp_func(src_marker, destination_marker)
        return status


    def grasp(self, src_marker, destination_marker, record_file, grasp_orientation, grasp_delta):
        traj = []
        print "Destination is", destination_marker
        with open(record_file) as tr_fd:
            trace_index = 0
            for line in tr_fd:
                traj.append([float(i) for i in line.strip().split(',')])
        try:
            curr_initial_pos, curr_initial_orient = self.tf_listener.lookupTransform('/base', src_marker, rospy.Time(0))
        except:
            time.sleep(1)
            curr_initial_pos, curr_initial_orient = self.tf_listener.lookupTransform('/base', src_marker, rospy.Time(0))

        curr_init = list(curr_initial_pos) + list (curr_initial_orient)

        try:
            goal_pos, goal_orient = self.tf_listener.lookupTransform('/base', destination_marker, rospy.Time(0))         #Plan to a different goal than demo
        except:
            time.sleep(1)
            goal_pos, goal_orient = self.tf_listener.lookupTransform('/base', destination_marker, rospy.Time(0))

        goal = list(goal_pos) + grasp_orientation

        #resp = makeLFDRequest(self.dims, self.traj, self.dt, self.K, self.D, self.num_bases)
        #Set it as the active DMP
        #makeSetActiveRequest(resp.dmp_list)
        plan = self.getDMPplan(curr_init, traj, goal)
        waypoints = []
        for point in plan.plan.points:
            tmp_pose = geometry_msgs.msg.Pose()
            step = list(point.positions)
            tmp_pose.orientation.x = step[3]
            tmp_pose.orientation.y = step[4]
            tmp_pose.orientation.z = step[5]
            tmp_pose.orientation.w = step[6]
            tmp_pose.position.x = step[0] + grasp_delta[0]
            tmp_pose.position.y = step[1] + grasp_delta[1]
            tmp_pose.position.z = step[2] + grasp_delta[2]
            waypoints.append(copy.deepcopy(tmp_pose))
    
        (move_plan, fraction) = self.group.compute_cartesian_path(
                                 waypoints,   # waypoints to follow
                                 0.01,        # eef_step
                                 0.0)         # jump_threshold

        if fraction < 0.8:
            print "Not enough waypoints executed"
            return False
        output = StringIO.StringIO()
        move_plan.serialize(output)


        time.sleep(1)
        self.right_gripper.open([])
        time.sleep(3)

        self.group._g.execute(output.getvalue())

        #    1.c close grip
        # Baxter I command thee to close thy gripper
        time.sleep(3)
        self.right_gripper.close([])
        time.sleep(2)
        return True

    def vertical_grasp(self, src_marker, destination_marker):
        """

            Execute the vertical_grasp
        """
        if src_marker != "right_gripper":
            print "For vertical grasp, the src should be right_gripper"
            return False
        if destination_marker == "ar_marker_8":
            VERTICAL_GRASP_DELTA = MARKER8_GRASP_DELTA
        else:
            VERTICAL_GRASP_DELTA = MARKER10_GRASP_DELTA
        return self.grasp(src_marker, destination_marker, self.vertical_record_file,
                   VERTICAL_GRIP_ORIENT, VERTICAL_GRASP_DELTA)
        
    def lateral_grasp(self, src_marker, destination_marker):
        """

            Execute the vertical_grasp
        """
        if src_marker != "right_gripper":
            print "For lateral grasp, the src should be right_gripper"
            return False
        return self.grasp(src_marker, destination_marker, self.lateral_record_file,
                   LATERAL_GRIP_ORIENT, LATERAL_GRASP_DELTA)

    def pour(self, src_marker = None, destination_marker = None):
        """
            Execute pour
            Both arguments are ignored here
        """
        try:
            curr_pos, curr_orient = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))         #Plan to a different cup than demo
        except:
            time.sleep(1)
            curr_pos, curr_orient = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))

        pour_pos = geometry_msgs.msg.Pose()
        pour_pos.position.x = curr_pos[0]
        pour_pos.position.y = curr_pos[1]
        pour_pos.position.z = curr_pos[2]
    
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
        return True

    def drop(self, src_marker = None, destination_marker = None):
        """
            Execute drop
            Both arguments are ignored here
        """
        time.sleep(1)
        self.right_gripper.open([])
        time.sleep(3)
        return True

    def return_dmp(self, src_marker_obj, destination_marker = None):
        """

            Execute the return dmp
        """
#        if src_marker != "right_gripper":
#            print "For vertical grasp, the src should be right_gripper"
#            return False
        src_marker = "right_gripper"

        traj = []

        with open(self.return_record_file) as tr_fd:
            trace_index = 0
            for line in tr_fd:
                traj.append([float(i) for i in line.strip().split(',')])

        try:
            curr_initial_pos, curr_initial_orient = self.tf_listener.lookupTransform('/base', src_marker, rospy.Time(0))
        except:
            time.sleep(1)
            curr_initial_pos, curr_initial_orient = self.tf_listener.lookupTransform('/base', src_marker, rospy.Time(0))

        curr_init = list(curr_initial_pos) + list (curr_initial_orient)

        goal = list(self.init_pos) + list(self.init_orient)

        #resp = makeLFDRequest(self.dims, self.traj, self.dt, self.K, self.D, self.num_bases)
        #Set it as the active DMP
        #makeSetActiveRequest(resp.dmp_list)
        plan = self.getDMPplan(curr_init, traj, goal)
        waypoints = []
	step_count = 0
        for point in plan.plan.points:
            tmp_pose = geometry_msgs.msg.Pose()
            step = list(point.positions)
            tmp_pose.orientation.x = step[3]
            tmp_pose.orientation.y = step[4]
            tmp_pose.orientation.z = step[5]
            tmp_pose.orientation.w = step[6]
            if step_count == 0:
                tmp_pose.position.x = step[0] + RETURN_DELTA[0]
                tmp_pose.position.y = step[1] + RETURN_DELTA[1]
                tmp_pose.position.z = step[2] + RETURN_DELTA[2]
            else:
                tmp_pose.position.x = step[0]
                tmp_pose.position.y = step[1]
                tmp_pose.position.z = step[2]
            step_count = step_count + 1
            waypoints.append(copy.deepcopy(tmp_pose))

        (move_plan, fraction) = self.group.compute_cartesian_path(
                                 waypoints,   # waypoints to follow
                                 0.01,        # eef_step
                                 0.0)         # jump_threshold

        if fraction < 0.8:
            print "Not enough waypoints executed"
            return False
        output = StringIO.StringIO()
        move_plan.serialize(output)

        self.group._g.execute(output.getvalue())
        return True

    def place(self, src_marker_obj, destination_marker):
        """
            Execute the place dmp 
        """
        traj = []

        # we really dont care about src_marker src should always be right_gripper
        src_marker = "right_gripper"
        with open(self.vertical_record_file) as tr_fd:
            trace_index = 0
            for line in tr_fd:
                traj.append([float(i) for i in line.strip().split(',')])
        try:
            curr_initial_pos, curr_initial_orient = self.tf_listener.lookupTransform('/base', src_marker, rospy.Time(0))
        except:
            time.sleep(1)
            curr_initial_pos, curr_initial_orient = self.tf_listener.lookupTransform('/base', src_marker, rospy.Time(0))

        curr_init = list(curr_initial_pos) + list (curr_initial_orient)

        try:
            goal_pos, goal_orient = self.tf_listener.lookupTransform('/base', destination_marker, rospy.Time(0))         #Plan to a different goal than demo
        except:
            time.sleep(1)
            goal_pos, goal_orient = self.tf_listener.lookupTransform('/base', destination_marker, rospy.Time(0))

        goal = list(goal_pos) + PLACE_GRIP_ORIENT

        #resp = makeLFDRequest(self.dims, self.traj, self.dt, self.K, self.D, self.num_bases)
        #Set it as the active DMP
        #makeSetActiveRequest(resp.dmp_list)
        plan = self.getDMPplan(curr_init, traj, goal)
        waypoints = []
        for point in plan.plan.points:
            tmp_pose = geometry_msgs.msg.Pose()
            step = list(point.positions)
            tmp_pose.orientation.x = step[3]
            tmp_pose.orientation.y = step[4]
            tmp_pose.orientation.z = step[5]
            tmp_pose.orientation.w = step[6]
            tmp_pose.position.x = step[0] + PLACE_GRASP_DELTA[0]
            tmp_pose.position.y = step[1] + PLACE_GRASP_DELTA[1]
            tmp_pose.position.z = step[2] + PLACE_GRASP_DELTA[2]
            waypoints.append(copy.deepcopy(tmp_pose))

        (move_plan, fraction) = self.group.compute_cartesian_path(
                                 waypoints,   # waypoints to follow
                                 0.01,        # eef_step
                                 0.0)         # jump_threshold

        if fraction < 0.8:
            print "Not enough waypoints executed"
            return False
        output = StringIO.StringIO()
        move_plan.serialize(output)

        #time.sleep(1)
        #self.right_gripper.open([])
        #time.sleep(3)


        self.group._g.execute(output.getvalue())

        #    1.c close grip
        # Baxter I command thee to close thy gripper
        time.sleep(3)
        self.right_gripper.open([])
        time.sleep(2)
        return True
        
