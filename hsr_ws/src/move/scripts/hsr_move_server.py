#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
from hsr_move import HsrMove

from move.msg import DoMoveAction

class DoDishesServer:
  def __init__(self):
    self.server = actionlib.SimpleActionServer('do_move', DoMoveAction, self.execute, False)
    self.server.start()
    self.mvt = HsrMove() # ++++++
    self.mvt.init_robot()
    
  
  def execute(self, goal):
    # Do lots of awesome groundbreaking robot stuff here
    print (str(goal.goal_msg))
    msg = str(goal.goal_msg).split(",") # ++++++
    print msg[0]
    self.mvt.do_move(msg) # +++++
    #goal.result_msg = " Move is executed "
    self.server.set_succeeded()

if __name__ == '__main__':
  rospy.init_node('do_move_server')
  server = DoDishesServer()
  rospy.spin()
