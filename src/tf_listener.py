# Listen to tf transformer
import roslib
import rospy
import tf
import sys
import time
import signal

def handle_exit(recvd_signal, frame):
    """
    """
    print "recieved a sigterm, exiting the process"
    
FAILURE_THRESHOLD = 10

def record_my_position(trans, quat, rec_filename):
    with open(rec_filename,'a') as rec_fd:
	tran_str = ','.join([str(i) for i in trans])
	quat_str = ','.join([str(i) for i in quat])
        rec_line = tran_str + ',' + quat_str
        rec_fd.write(rec_line + '\n')

if __name__ == "__main__":
    signal.signal(signal.SIGTERM, handle_exit)
    base_node = "/" + sys.argv[1].strip()
    marker_node = "/" + sys.argv[2].strip()
    rec_filename = sys.argv[3].strip()
    if len(sys.argv) > 4:
        cont_record = sys.argv[4].strip()
    else:
        cont_record = "false"
    failure_count = 0
    rospy.init_node('tf_listener')
    listener = tf.TransformListener()
    if cont_record.lower() == "true":
        while True:
            try:
                print base_node+" "+marker_node
                trans, quat = listener.lookupTransform(base_node, marker_node, rospy.Time(0))
		print (trans)
            except tf.LookupException:
                print "These are not the nodes you are looking for"
                failure_count = failure_count + 1
                if failure_count > FAILURE_THRESHOLD:
                    print "Exiting the listener"
                    sys.exit(0)
                else:
                    print "Trying again"
                    time.sleep(1)
                    continue
            record_my_position(trans, quat, rec_filename)
            print "Position Recorded"
            time.sleep(1)
    else:
        trans, quat = listener.lookupTransform(base_node, marker_node, rospy.Time(0))
        record_my_position(trans, quat, rec_filename)

