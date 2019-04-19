#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
import sys
import move.msg
from move.msg import DoMovePosesAction, DoMovePosesGoal
from geometry_msgs.msg import PoseStamped
 
if __name__ == '__main__':
  rospy.init_node('do_move_client')
  client = actionlib.SimpleActionClient('do_move_poses', DoMovePosesAction)
  client.wait_for_server()
  
  goal = DoMovePosesGoal()
  p = PoseStamped()
  p.header.frame_id = 'hand_palm_link'
  p.pose.position.x = 0.4
  p.pose.position.y = 0.078
  p.pose.position.z = 0.5
  p.pose.orientation.x= 0.6889216856587987
  p.pose.orientation.y = 1.0477472514336402e-07
  p.pose.orientation.z = 0.7248357821113878
  p.pose.orientation.w = -2.146110006732656e-08
  goal.list_poses.append(p)
  # Fill in the goal here
  client.send_goal(goal)
  #client.wait_for_result(move.msg.DoMoveJointsResult)
  client.wait_for_result(rospy.Duration.from_sec(5.0))
  #client.wait_for_result()
  #client.wait_for_result()
