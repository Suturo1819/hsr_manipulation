#! /usr/bin/env python

import roslib
roslib.load_manifest('move')
import rospy
import actionlib
from hsr_move import HsrMove
import move.msg
from move.msg import DoMovePosesAction
import control_msgs

class DoMovePosesServer:

  _feedback = move.msg.DoMovePosesFeedback()
  _result = move.msg.DoMovePosesResult()
  
  def __init__(self):
    self.server = actionlib.SimpleActionServer('do_move_poses', DoMovePosesAction, self.execute, False)
    self.server.start()
    self.mvt = HsrMove() # ++++++
    self.mvt.init_robot()
    
  
  def execute(self, list_desired_poses):
    print (str(list_desired_poses.goal_msg))
    list_poses = list_desired_poses.list_poses
    object_pose = list_desired_poses.object_pose
    print list_poses
    print object_pose
    self.do_move_links(list_poses) # +++++
    #goal.result_msg = " Move is executed "
    #self.server.set_succeeded()
    
  def do_move_links(self, list_poses):
    count_success= 0
    if len(list_poses) > 0:
      for x in range(len(list_poses)):
        if self.server.is_preempt_requested():
          rospy.loginfo('the server do_move_poses is Preempted')
          self.server.set_preempted()
          success = False
          break
          
        success = self.mvt.move_link(list_poses[x].header.frame_id, list_poses[x].pose.position.x, list_poses[x].pose.position.y, list_poses[x].pose.position.z, 1.0)
        
        if success:
          count_success = count_success + 1
          self._feedback.feedback_msg = str(count_success)+" of "+ str(len(list_poses))+ " links are moved. "
          self._feedback.list_poses.append(list_poses[x])
          rospy.loginfo(str(list_poses[x].header.frame_id) + " is moved to " + str(list_poses[x].pose.position))
          self.server.publish_feedback(self._feedback)
      
      if count_success == len(list_poses) and success:
        print ("End move links")
        self._result.result_msg = ("all links are moved")
        rospy.loginfo('all links are moved with success')
        self.server.set_succeeded(self._result)
    
    else:
      print ("Links list is empty")
      success = False
    


if __name__ == '__main__':
  rospy.init_node('do_move_poses_server')
  server = DoMovePosesServer()
  rospy.spin()
