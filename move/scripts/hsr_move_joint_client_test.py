#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
import sys
import suturo_manipulation_msgs.msg
from suturo_manipulation_msgs.msg import DoMoveJointsAction, DoMoveJointsGoal
import geometry_msgs.msg
from tf2_msgs.msg import TFMessage
 
if __name__ == '__main__':
  rospy.init_node('do_move_client')
  client = actionlib.SimpleActionClient('do_move_joints', DoMoveJointsAction)
  client.wait_for_server()
  
  goal = DoMoveJointsGoal()
  goal.goal_msg = "grip"
  goal.object_pose.position.x= 0.5#0.9 #-1.03
  goal.object_pose.position.y= 0.22#0.078 #0.0209
  goal.object_pose.position.z= 0.1#0.2 #0.6
  goal.object_pose_to_odom.position.x= 0.5 #0.9 #1.21
  goal.object_pose_to_odom.position.y= 0.22 #0.078 #0.0854
  goal.object_pose_to_odom.position.z= 0.1 #0.2 #0.6
  goal.width = 0.09
  goal.height = 0.04
  goal.modus= "FRONT"
  #goal.desired_joints_values.joint_names = ["arm_lift_joint", "arm_flex_joint"]
  #goal.desired_joints_values.desired.positions = [0.0, -1.57]
  #goal.desired_joints_values.desired.positions = [0.0, -0.0]
  # Fill in the goal here
  client.send_goal(goal)
  #client.wait_for_result(move.msg.DoMoveJointsResult)
  client.wait_for_result(rospy.Duration.from_sec(5.0))
  #client.wait_for_result()
