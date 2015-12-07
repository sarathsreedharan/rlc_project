from DmpLibrary import *
import sys, os
import subprocess
import time
import numpy as np
from sklearn.svm import SVC

import re
import math


# Move these to a yaml file
marker_map = {'cup': 'ar_marker_8', 'icecube': 'ar_marker_10', 'init':'right_gripper', 'default':'ar_marker_9'}
baxter_emotion_map = {"concentrating": "concentrating.png","confused": "confused.png","happy": "happy.png","neutral": "neutral.png","sad": "sad.png","sleeping": "sleeping.png","surprised-alert": "surprised-alert.png","surprised": "surprised.png"}
indiv_dmp_map = {"moveandplace": "place", "return": "return_dmp", "drop": "drop", "pour": "pour" }
src_dest_map = {"moveandgrasp":(2,1), "moveandplace":(1,3), "drop":(1,2), "pour":(2,3), "return":(1,2)}
multi_dmp_actions = {"moveandgrasp":["vertical_grasp", "lateral_grasp"]}
ACTION_LIST = ['moveandplace','drop','pour','return']

def classify(actionArray):
    dmpMap = {0:'vertical', 1:'lateral'}
    #actionMap = {0:'moveandgrasp'}
    #actionArrayMap = {0:'moveandplace', 1:'drop', 2:'pour', 3:'return'}
    
    with open('classify/data.dat') as f1:
        X = []
        y = []
        for line in f1:
            if line:
                l = re.findall(r'\d+', line)
                l1 = l[4]
                l2 = l[0:4]
                y.append(l1)
                X.append(l2)
    n = len(X)
    fl = math.floor(0.7 * n)

    Xtrain = X
    ytrain = y
    classifier = SVC()
    classifier.fit(Xtrain, ytrain)
    result = classifier.predict(actionArray)
    #print "Support vectors are"
    #print classifier.support_vectors_
    return int(result[0])

def baxter_emote(emotion):
    current_dir = os.path.dirname(os.path.realpath(__file__))
    image_dir = os.path.join(current_dir, 'baxter-faces/')
    display_command = ['rosrun', 'baxter_examples', 'xdisplay_image.py', '--file=`rospack find baxter_examples`', '-f']
    if emotion in baxter_emotion_map.keys():
        image_file = baxter_emotion_map[emotion]
    else:
        image_file = baxter_emotion_map["surprised-alert"]
    display_command.append(image_dir + image_file)
    subprocess.call(display_command)

def traslate_obj_to_markers(obj1, obj2):
    marker_1 = ""
    marker_2 = ""
    if obj1 != "":
        if obj1 in marker_map.keys():
            marker_1 = marker_map[obj1]
        else:
            marker_1 = marker_map['default']
    if obj2 != "":
        if obj2 in marker_map.keys():
            marker_2 = marker_map[obj2]
        else:
            marker_2 = marker_map['default']
    return (marker_1, marker_2)

def convert_action_to_dmp(action, relevant_plan = []):
    dmp_name = ""
    if action not in multi_dmp_actions.keys():
        print "action ",action, " has only a single dmp"
        if action in indiv_dmp_map.keys():
            dmp_name = indiv_dmp_map[action]
    else:
        # ASSUMING A SINGLE MULTI DMP ACTION
        input_vector = []
        for i in range(len(action_list)):
           if ACTION_LIST[i] in relevant_plan:
                input_vector.append(1)
           else:
                print ACTION_LIST[i]
                input_vector.append(0)
        print "input vector is ",input_vector," for relevant plan", relevant_plan
        dmp_index = classify(input_vector)
        dmp_name = multi_dmp_actions[action][dmp_index]
    return dmp_name

def get_src_and_dest(action_list):
    if action_list[0] not in src_dest_map.keys():
        return ("", "")
    src_id, dst_id =  src_dest_map[action_list[0]]
    return traslate_obj_to_markers(action_list[src_id], action_list[dst_id])

def execute_plan(plan, record_file_dir):
    rospy.init_node('baxter_planner')
    dmp_lib = DmpLibrary(record_file_dir)
    baxter_emote("neutral")
    time.sleep(0.5)
    for p_index in range(len(plan)):
        action = plan[p_index]
        relevant_plan = []
        for act_2 in plan[p_index+1:]:
            if act_2.split()[0] == action.split()[0]:
                break
            relevant_plan.append(act_2.split()[0])
        action_list = action.split()
        marker1, marker2 = get_src_and_dest(action_list)
        #print "current action is ", action_list[0]
        dmp_name = convert_action_to_dmp(action_list[0], relevant_plan)
        #marker1, marker2 = traslate_obj_to_markers(arg1, arg2)
        print "Executing action", dmp_name," ", marker1, " ", marker2
        baxter_emote("concentrating")
        status = dmp_lib.execute_dmp(dmp_name, marker1, marker2)
        baxter_emote("neutral")
        time.sleep(0.5)
    	print "Small sleep"
        #status = True
        if not status:
            baxter_emote("surprised")
            time.sleep(0.5)
            baxter_emote("surprised-alert")
            print "Unexpected error during plan execution"
            time.sleep(0.5)
            baxter_emote("sleeping")
            exit(1)
    baxter_emote("happy")
    print "Plan executed succesfully, hopefully no one was hurt too badly"
    time.sleep(0.5)
    baxter_emote("sleeping")
    exit(0)

if __name__ == "__main__":
    rospy.init_node('baxter_planner')
    record_file_dir = sys.argv[1]
    plan_file = sys.argv[2]
    dmp_lib = DmpLibrary(record_file_dir)
    plan = []
    with open(plan_file) as p_fd:
        for raw_action in p_fd:
            if raw_action[0] != ';':
                action = raw_action.strip().lower() #.split('(')[1].split(')')[0].lower()
                plan.append(action)
                ## TODO convert regions to markers
    execute_plan(plan)
