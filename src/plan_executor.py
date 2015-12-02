from DmpLibrary import *
import sys, os
import subprocess

marker_map = {'cup': 'ar_marker_8', 'ice_cube': 'ar_marker_'}
baxter_emotion_map = {"happy":"happy.png", "sad": "sad.png", "quizzical":"quizzical.png"}
def baxter_emote(emotion):
    current_dir = os.path.dirname(os.path.realpath(__file__))
    image_dir = os.path.join(current_dir, '../images/')
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
    return marker_1, marker_2

def convert_action_to_dmp(action):
    return dmp_name

if __name__ == "__main__":
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
    for action in plan:
        action_name, arg1, arg2 = action.split(1)
        dmp_name = convert_action_to_dmp(action_name)
        marker1, marker2 = 
        status = dmp_lib.execute(action_name, arg1, arg2)
        if not status:
            baxter_emote("sad")
            print "Unexpected error during plan execution"
            exit(1)
    baxter_emote("happy")
    print "Plan executed succesfully, hopefully no one was hurt too bady"
    exit(0)
