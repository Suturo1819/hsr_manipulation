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
  p.header.frame_id = 'wrist_roll_link'
  p.pose.position.x = 0.3
  p.pose.position.y = 0.0
  p.pose.position.z = 0.2
  goal.list_poses.append(p)
  # Fill in the goal here
  client.send_goal(goal)
  #client.wait_for_result(move.msg.DoMoveJointsResult)
  #client.wait_for_result(rospy.Duration.from_sec(5.0))
  client.wait_for_result()
  return client.get_result()
  #client.wait_for_result()
