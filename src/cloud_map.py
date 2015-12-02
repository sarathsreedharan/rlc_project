import rospy
from sensor_msgs.msg import PointCloud2

def callback(data):
    rospy.loginfo(data)
    pub_agile_grasp.publish(data)
    pub_grasp_selection.publish(data)
    
def cloud_map():
    rospy.init_node('cloud_map', anonymous=True)

    pub_agile_grasp = rospy.Publisher('/camera/depth_registered/points', PointCloud2, queue_size=10)
    pub_grasp_selection = rospy.Publisher('/register_clouds/point_cloud', PointCloud2, queue_size=10)

    rospy.Subscriber("/camera/depth_registered/points", PointCloud2, callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        cloud_map()
    except rospy.ROSInterruptException:
        pass
