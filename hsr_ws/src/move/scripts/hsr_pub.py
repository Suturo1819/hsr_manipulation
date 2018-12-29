#!/usr/bin/env python
import rospy
import hsr_move
from hsr_move import HsrMove
from std_msgs.msg import String
import sys
#from move import move_msg
#import move.msg.move_msg

def publisher():
  pub = rospy.Publisher('hsr', String, queue_size=1)
  rospy.init_node('pub', anonymous=True)
  #rate = rospy.Rate(10)
  msg = String(data="hand_palm_link "+ sys.argv[1] +" 1.0 1.0 1.0")
  pub.publish(msg)
  
if __name__ == '__main__':
  try:
    publisher()
  except rospy.ROSInterruptException:
    pass
