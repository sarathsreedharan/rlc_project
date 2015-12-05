from DmpLibrary import *
import sys, os
import subprocess
import time
import numpy as np
from sklearn.svm import SVC

import re
import math


# Move these to a yaml file
marker_map = {'cup': 'ar_marker_8', 'ice_cube': 'ar_marker_10', 'init':'right_gripper', 'default':'ar_marker_9'}
baxter_emotion_map = {"concentrating": "concentrating.png","confused": "confused.png","happy": "happy.png","neutral": "neutral.png","sad": "sad.png","sleeping": "sleeping.png","surprised-alert": "surprised-alert.png","surprised": "surprised.png"}
indiv_dmp_map = {"MoveAndPlace": "place", "Return": "return_dmp", "Drop": "drop", "Pour": "pour" }
src_dest_map = {"MoveAndGrasp":[2,1], "MoveAndPlace"}
multi_dmp_actions = {"MoveAndGrasp":["vertical_grasp", "lateral_grasp"]}

def classify(actionArray):
    dmpMap = {0:'vertical', 1:'lateral'}
    #actionMap = {0:'MoveAndGrasp'}
    #actionArrayMap = {0:'MoveAndPlace', 1:'Drop', 2:'Pour', 3:'Return'}
    
    with open('data.dat') as f1:
        X = []
        y = []
        for line in f1:
            if line:
                l = re.findall(r'\d+', line)
                l1 = l[4]
                l2 = l[0:4]
                y.append(l1)
                X.append(l2)
    print X
    print y

    n = len(X)
    fl = math.floor(0.7 * n)

    Xtrain = X[0:int(fl)]
    Xtest = X[int(fl):n]
    ytrain = y[0:int(fl)]
    ytest = y[int(fl):n]
    classifier = SVC()
    classifier.fit(X, y)
    result = classifier.predict(actionArray)
    print "Support vectors are"
    print classifier.support_vectors_
    return result

def baxter_emote(emotion):
    current_dir = os.path.dirname(os.path.realpath(__file__))
    image_dir = os.path.join(current_dir, 'baxter-faces/')
    display_command = ['rosrun', 'baxter_examples', 'xdisplay_image.py', '--file=`rospack find baxter_examples`']
    if emotion in baxter_emotion_map.keys():
        image_file = baxter_emotion_map[emotion]
    else:
        image_file = baxter_emotion_map["quizzical"]
    display_command.append(image_file)
    subprocess.call(display_command)

def traslate_obj_to_markers(obj1, obj2):
    marker_1 = ""
    marker_2 = ""
    if obj1 != "" and obj1 in marker_map.keys():
        marker_1 = marker_map[obj1]
    if obj2 != "" and obj2 in marker_map.keys():
        marker_2 = marker_map[obj2]
    return (marker_1, marker_2)

def convert_action_to_dmp(action, relevant_plan = []):
    dmp_name = ""
    if action not in multi_dmp_actions.keys():
        if action in indiv_dmp_map.keys():
            dmp_name = indiv_dmp_map[action]
    return dmp_name

def get_src_and_dest(action_list):
    if action_list[0] not in src_dest_map.keys():
        return ("", "")
    src_id, dst_id =  src_dest_map[action_list[0]]
    return traslate_obj_to_markers(action_list[src_id], action_list[dst_id])

if __name__ == "__main__":
    rospy.init_node('baxter_planner')
    record_file_dir = sys.argv[1]
    plan_file = sys.argv[2]
    dmp_lib = DmpLibrary(record_file_dir)
    plan = []
    with open(plan_file) as p_fd:
        for action in p_fd:
            if action[0] != ';':
                plan.append(action.strip())
                ## TODO convert regions to markers
    baxter_emote("focus")
    for p_index in range(len(plan)):
        action = plan[p_index]
        relevant_plan = []
        for act_2 in plan[p_index:]:
            if act_2 == action:
                break
            relevant_plan.append(act_2)
        action_list = action.split()
        marker1, marker2 = get_src_and_dest(action_list)
        dmp_name = convert_action_to_dmp(action_name, relevant_plan)
        #marker1, marker2 = traslate_obj_to_markers(arg1, arg2)
        print "Executing action", dmp_name," ", marker1, " ", marker2
        status = dmp_lib.execute_dmp(dmp_name, marker1, marker2)
        time.sleep(1)
    	print "Small sleep"
        #status = True
        if not status:
            baxter_emote("sad")
            print "Unexpected error during plan execution"
            exit(1)
    baxter_emote("happy")
    print "Plan executed succesfully, hopefully no one was hurt too bady"
    exit(0)
