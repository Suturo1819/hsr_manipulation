#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
import sys
from move.msg import DoMoveAction, DoMoveGoal
 
if __name__ == '__main__':
  rospy.init_node('do_move_client')
  client = actionlib.SimpleActionClient('do_move', DoMoveAction)
  client.wait_for_server()
  
  goal = DoMoveGoal()
  msg = ",".join(sys.argv[1:])
  print (msg)
  goal.goal_msg = msg
  # Fill in the goal here
  client.send_goal(goal)
  client.wait_for_result(rospy.Duration.from_sec(5.0))
