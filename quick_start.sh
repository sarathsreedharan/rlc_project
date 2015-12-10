#!/bin/bash
roslaunch freenect_launch freenect-registered-xyzrgb.launch &
rosrun tf static_transform_publisher 0.806 0.251 0.521 0.166 0.210 -0.627 0.732 /base /camera_link 100 &
roslaunch baxter_kinect_calibration baxter_indiv.launch &
rosrun baxter_interface joint_trajectory_action_server.py &
roslaunch baxter_moveit_config demo_baxter.launch &
roslaunch dmp dmp.launch &
roslaunch rlc_project demo.launch problem_file:=$1 record_file_dir:=/home/rlc/rosws/src/rlc_project/src/record_files_test/
