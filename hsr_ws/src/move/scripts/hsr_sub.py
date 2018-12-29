#!/usr/bin/env python
import sys
import rospy
import hsr_move
from hsr_move import HsrMove
from std_msgs.msg import String
#import move
#from msg import move_msg


def move_it(msg_data):
  msg = msg_data.data.split(" ")
  mvt = HsrMove()
  mvt.set_parameter(msg[0], msg[1], msg[2], msg[3], msg[4])
  mvt.init_robot()
  mvt.do_move(msg[1])
  print(" it moves")

def listener():
  rospy.init_node('sub', anonymous=True)
  
  rospy.Subscriber("hsr", String, move_it)
  
  rospy.spin()
  
if __name__ == '__main__':
  listener()
