# Fall 2015 CSE 591 Advances in Robot Learning
**Class Project -**  
Modeling Preferences in Execution of High Level Plans

**Required Ros Packages :-**
* Baxter sdk
* baxter_kinect_calibration - https://github.com/h2r/baxter_h2r_packages/tree/indigo-devel/baxter_kinect_calibration
* ar_track_alvar - http://wiki.ros.org/ar_track_alvar
* Moveit - https://github.com/RethinkRobotics/sdk-docs/wiki/MoveIt-Tutorial
* DMP - http://wiki.ros.org/dmp

**Installation -** 
Make sure all the required packages are installed, please check the website associated with each package for their individual installation guides. Once all the dependencies are installed, please checkout the rlc_project repo to the src directory of your ros workspace.
```
cd ~/rosws/src
git clone https://github.com/sarathsreedharan/rlc_project.git
```
Once the repo is checked out move to the workspace root and run the catkin_make command
```
cd ~/rosws/
catkin_make
```

**Recording trajectories -** 
Use trajectory_recorder.py file to record any action trajectories

```
Usage:
python trajectory_recorder.py ${record_file_name} true
```
While the script is running slowly move the robot arms in the required trajectory, the script captures the position of the robot's right hand gripper. Once the trajectory is completed, please send a SIGINT signal (ctrl + C in linux) to stop the recording. The positions should be recorded in the file ${record_file_name}.

**Running the scenario -**
Start services related to each of the above mentioned packages(you can also use the quick start script to start the services, but make sure to replace the values in static_transform_publisher between base and camera_link to reflect your specific settings), the entire scenario can be run using the launch file demo.launch

```
Usage:
For scenario 1, use the command
roslaunch rlc_project demo.launch problem_file:=problem-1.pddl record_file_dir:=/home/rlc/rosws/src/rlc_project/src/record_files_test/

For scenario 1, use the command
roslaunch rlc_project demo.launch problem_file:=problem-2.pddl record_file_dir:=/home/rlc/rosws/src/rlc_project/src/record_files_test/

```

**Members -**  
Anagha Kulkarni  
Sarath Sreedharan  
Tathagata Chakraborti
