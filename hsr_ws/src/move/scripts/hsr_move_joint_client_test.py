#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
import sys
import move.msg
import geometry_msgs.msg
from move.msg import DoMoveJointsAction, DoMoveJointsGoal
from tf2_msgs.msg import TFMessage
 
if __name__ == '__main__':
  rospy.init_node('do_move_client')
  client = actionlib.SimpleActionClient('do_move_joints', DoMoveJointsAction)
  client.wait_for_server()
  
  goal = DoMoveJointsGoal()
  goal.goal_msg = "grip"
  goal.object_pose.position.x= 1.0
  goal.object_pose.position.y= 0.0
  goal.object_pose.position.z= 0.6
  goal.width = 1.0
  #goal.desired_joints_values.joint_names = ["arm_lift_joint", "arm_flex_joint"]
  #goal.desired_joints_values.desired.positions = [0.0, -1.57]
  #goal.desired_joints_values.desired.positions = [0.0, -0.0]
  # Fill in the goal here
  client.send_goal(goal)
  #client.wait_for_result(move.msg.DoMoveJointsResult)
  client.wait_for_result(rospy.Duration.from_sec(5.0))
  #client.wait_for_result()
