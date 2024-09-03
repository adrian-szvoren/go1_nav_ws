#!/usr/bin/env python
import rospy
from phasespace.msg import Rigid
import numpy as np 
import cv2 
from inputs import get_mouse
import threading
import time
import rospkg
from nav_msgs.msg import OccupancyGrid
import yaml
clicked = False


pixel_centre_x = 50 # centre in pixel
pixel_centre_y = 50 # centre in pixel
pixel_width = 0.1 # 1 cm/pixel
map_img = 255*np.ones((100,100), np.uint8)
map_meta_data = dict.fromkeys(["image", "resolution", "origin", 
                               "occupied_thresh", "free_thresh", 
                               "negate"],[])
map_meta_data["resolution"] = pixel_width
map_meta_data["origin"] = [-pixel_centre_x*pixel_width, -pixel_centre_y*pixel_width, 0.0]
map_meta_data["occupied_thresh"] = 0.65
map_meta_data["free_thresh"] = 0.196
map_meta_data["negate"] = 0





class Mouse_checker:
  """Interface for reading commands from Mouse button.
  """
  def __init__(self):
    self.is_running = True

    self.read_thread = threading.Thread(target=self.read_loop)
    self.read_thread.start()


  def read_loop(self):
    """The read loop for events.

    This funnction should be executed in a separate thread for continuous
    event recording.
    """
    while self.is_running:
      try: 
        events = get_mouse()
        for event in events:
          self.update_command(event)
          if (not self.is_running):
            break
      except:
        rospy.loginfo("An exception occurred")

  def update_command(self, event):
    """Update command based on event readings."""
    global clicked
    if event.ev_type == "Key":
      if event.code == "BTN_MIDDLE":
        if event.state == 1:
           clicked = not clicked
           if (clicked):
              rospy.loginfo("Drawing started")

           else:
              rospy.loginfo("Drawing stopped")

  def save_file(self):
    global map_img, map_meta_data
    save_dir = rospkg.RosPack().get_path('obstacle_drawer') + '/maps/'
    timestr = time.strftime("%Y%m%d-%H%M%S")
    img_file_name = "map_imag_"+ timestr + ".png"
    file_path = save_dir + img_file_name
    rospy.loginfo("Saving map")
    cv2.imwrite(file_path, map_img)

    map_meta_data["image"] = img_file_name
    meta_file_name = "map_imag_"+ timestr + ".yaml"
    file_path = save_dir + meta_file_name
    with open(file_path, 'w') as outfile:
      yaml.dump(map_meta_data, outfile, sort_keys=False, default_flow_style=False)


  def stop(self):
    self.is_running = False
    self.save_file()
  # the raw_reading are taken with the abs by de facto sddumng that left is always minimum and top is always minimum



class phasespace_listener:
  def __init__(self):

    rospy.Subscriber("phasespace_body_one", Rigid, self.callback)


  def callback(self, data):
    global map_img, clicked
    global pixel_width, pixel_centre_x, pixel_centre_y
    if (clicked):
        # the phasespace coordinate system is y up instead of z up.
        # hence phasespace (x,y,z) -> (z,x,y) in ROS
        grid_coord_x = int(np.floor((data.z/1000)/pixel_width + pixel_centre_x))
        grid_coord_y = int(np.floor((data.x/1000)/pixel_width + pixel_centre_y))

        # transform from ROS to CV coordinate:
        grid_coord_x_cv = 100 - grid_coord_y
        grid_coord_y_cv = grid_coord_x
        map_img[grid_coord_x_cv, grid_coord_y_cv] = 0
        # print("x =" + str(grid_coord_x) + ", y = " + str(grid_coord_y))


class occupency_map_pub:
  def __init__(self):
    self.is_running = True

    
    self.rate = rospy.Rate(10) # 10hz

    self.map_pub = rospy.Publisher('map',OccupancyGrid , queue_size=1)
    self.map_msg = OccupancyGrid()

    global pixel_width, pixel_centre_x, pixel_centre_y
    self.map_msg.info.resolution = pixel_width
    self.map_msg.info.width = 100
    self.map_msg.info.height = 100
    self.map_msg.info.origin.position.x = - pixel_centre_x*pixel_width
    self.map_msg.info.origin.position.y = - pixel_centre_y*pixel_width
    self.map_msg.header.frame_id = "map"
    
    self.pub_thread = threading.Thread(target=self.pub_loop)
    self.pub_thread.start()

  def pub_loop(self):
    global map_img
    global pixel_width, pixel_centre_x, pixel_centre_y

    while not rospy.is_shutdown():
      map_list = (100*np.ones_like(map_img) - 100/255*map_img)
      map_list= map_list.astype(np.uint8).flatten(order='C').tolist()
      self.map_msg.data = map_list
      self.map_msg.header.stamp = rospy.Time.now()
      self.map_pub.publish(self.map_msg)
      self.rate.sleep()


    
if __name__ == '__main__':
    
    rospy.init_node('obstacle_logger', anonymous=True)
    mouse_checker = Mouse_checker()
    listener = phasespace_listener()
    map_pub = occupency_map_pub()
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

    mouse_checker.stop()
    mouse_checker.read_thread.join()
    map_pub.pub_thread.join()