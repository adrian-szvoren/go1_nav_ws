#!/usr/bin/env python
import rospy
from phasespace.msg import Rigid

import tf2_ros
import geometry_msgs.msg
from tf.transformations import euler_from_quaternion, quaternion_from_euler

import math

class phasespace_listener:
  def __init__(self):
    rospy.init_node('obstacle_logger', anonymous=True)


    self.broadcaster = tf2_ros.StaticTransformBroadcaster()
    self.tracker_transform = geometry_msgs.msg.TransformStamped()
    self.tracker_transform.header.frame_id = "map"
    self.tracker_transform.child_frame_id = "robot_tracker"

    rospy.Subscriber("phasespace_body_one", Rigid, self.callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

  def callback(self, data):

    self.tracker_transform.header.stamp = rospy.Time.now()
    self.tracker_transform.transform.translation.x = data.z/1000
    self.tracker_transform.transform.translation.y = data.x/1000
    # self.tracker_transform.transform.translation.z = data.y/1000
    self.tracker_transform.transform.translation.z = data.y/1000


    # swaped from Phasespace to ROS coordinate system
    # Phasespace (x,y,z)-> ROS (z,x,y) 
    self.tracker_transform.transform.rotation.x = data.qz
    self.tracker_transform.transform.rotation.y = data.qx
    self.tracker_transform.transform.rotation.z = data.qy
    self.tracker_transform.transform.rotation.w = data.qw



    self.broadcaster.sendTransform(self.tracker_transform)




    
if __name__ == '__main__':
    listener = phasespace_listener()
