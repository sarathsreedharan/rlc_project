# Fall 2015 CSE 591 Advances in Robot Learning
**Class Project -**  
Modeling Preferences in Execution of High Level Plans

**Required Ros Packages :-**
* Baxter sdk
* baxter_kinect_calibration - https://github.com/h2r/baxter_h2r_packages/tree/indigo-devel/baxter_kinect_calibration
* Moveit - https://github.com/RethinkRobotics/sdk-docs/wiki/MoveIt-Tutorial
* DMP - http://wiki.ros.org/dmp

**Recording trajectories -** 
Use trajectory_recorder.py file to record any action trajectories

```
Usage:
python trajectory_recorder.py ${record_file_name} true
```

**Running the scenario -**

Start services related to each of the above mentioned packages, the entire scenario can be run using the script plan_executor.py

```
Usage:
python plan_executer.py ${record_file_dir}  ${plan_file_name} 
```

**Members -**  
Anagha Kulkarni  
Sarath Sreedharan  
Tathagata Chakraborti
