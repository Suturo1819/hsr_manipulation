#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
from hsr_move import HsrMove

from move.msg import DoMoveJointsAction

class DoMoveJointsServer:
  def __init__(self):
    self.server = actionlib.SimpleActionServer('do_move_joints', DoMoveJointsAction, self.execute, False)
    self.server.start()
    self.mvt = HsrMove() # ++++++
    self.mvt.init_robot()
    
  
  def execute(self, list_desired_joints):
    # Do lots of awesome groundbreaking robot stuff here
    print (str(list_desired_joints.goal_msg))
    joint_names = list_desired_joints.desired_joints_values.joint_names
    joint_values = list_desired_joints.desired_joints_values.desired.positions
    print joint_names
    print joint_values
    self.mvt.do_move_joints(joint_names, joint_values) # +++++
    #goal.result_msg = " Move is executed "
    self.server.set_succeeded()

if __name__ == '__main__':
  rospy.init_node('do_move_joints_server')
  server = DoMoveJointsServer()
  rospy.spin()
