#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
from hsr_move import HsrMove
import move.msg
from move.msg import DoMoveJointsAction
import control_msgs

class DoMoveJointsServer:

  _feedback = move.msg.DoMoveJointsFeedback()
  _result = move.msg.DoMoveJointsResult()
  
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
    self.do_move_joints(joint_names, joint_values) # +++++
    #goal.result_msg = " Move is executed "
    #self.server.set_succeeded()
    
  def do_move_joints(self, joint_names, joint_values):
    count_success= 0
    if(len(joint_names) == len(joint_values)) and len(joint_names) > 0:
      for x in range(len(joint_names)):
        if self.server.is_preempt_requested():
          rospy.loginfo('the server do_move_joints is Preempted')
          self.server.set_preempted()
          success = False
          break
          
        success = self.mvt.move_joint(joint_names[x], joint_values[x])
        
        if success:
          count_success = count_success + 1
          self._feedback.feedback_msg = str(count_success)+" of "+ str(len(joint_names))+ " Joints are moved. "
          self._feedback.successful_joints_values.joint_names.append(joint_names[x])
          self._feedback.successful_joints_values.actual.positions.append(joint_values[x])
          rospy.loginfo(str(joint_names[x]) + " is moved to " + str(joint_values[x]))
          self.server.publish_feedback(self._feedback)
      
      if count_success == len(joint_names) and success:
        print ("End move joint")
        self._result.result_msg = ("all joints are moved")
        self._result.current_joints_values.joint_names = joint_names
        self._result.current_joints_values.actual.positions = joint_values
        rospy.loginfo('all joints are moved with success')
        self.server.set_succeeded(self._result)
    
    else:
      print ("Joint list is empty")
      success = False
    


if __name__ == '__main__':
  rospy.init_node('do_move_joints_server')
  server = DoMoveJointsServer()
  rospy.spin()
