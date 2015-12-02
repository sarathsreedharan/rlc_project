import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import tf
import time
import os
import argparse

import rospy

import baxter_interface
import baxter_external_devices

#from baxter_interface import CHECK_VERSION
from baxter_interface import Gripper

print "============ Starting tutorial setup"
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_tutorial',
                anonymous=True)
robot = moveit_commander.RobotCommander()
group = moveit_commander.MoveGroupCommander("right_arm")

display_trajectory_publisher = rospy.Publisher(
                                    '/move_group/display_planned_path',
                                    moveit_msgs.msg.DisplayTrajectory, queue_size=10)

rospy.sleep(10)

listener = tf.TransformListener()


#Now, generate a plan
try:
    trans, quat = listener.lookupTransform('/base', '/ar_marker_8', rospy.Time(0))
except:
    time.sleep(1)
    trans, quat = listener.lookupTransform('/base', '/ar_marker_8', rospy.Time(0))

trans2, quat2 = listener.lookupTransform('/base', '/right_gripper', rospy.Time(0))
#print "Here be translations " + str(trans)
#print "Here be orientations ", quat

pose_target = geometry_msgs.msg.Pose()
# - Translation: [0.962, -0.270, 0.111]
pose_target.position.x = trans[0] + 0.05
pose_target.position.y = trans[1] - 0.05
pose_target.position.z = trans[2] + 0.06 #45
 #-0.051
#-0.703, 0.266, -0.324, 0.575]
#- Translation: [0.710, -0.536, 0.022]
pose_target.orientation.x = quat2[0] #-0.046
pose_target.orientation.y = quat2[1] #0.706
pose_target.orientation.z = quat2[2] # 0.695
pose_target.orientation.w = quat2[3] #-0.131
group.set_pose_target(pose_target)
plan1 = group.plan()
print plan1
print pose_target
#exit(0)
print "============ Waiting while RVIZ displays plan1..."
#rospy.sleep(5)
#subprocess.call([])
right_gripper = Gripper('right')
time.sleep(1)
right_gripper.open([])
time.sleep(3)
group.go(wait=True)
#left_gripper = Gripper('left')
#time.sleep(1)
time.sleep(3)
right_gripper.close([])
time.sleep(2)
pose_target.position.x = trans[0] 
pose_target.position.y = trans[1] 
pose_target.position.z = trans[2] + 0.3 
group.set_pose_target(pose_target)
plan1 = group.plan()
group.go(wait=True)
