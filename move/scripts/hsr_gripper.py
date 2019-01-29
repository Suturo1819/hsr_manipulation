#!/usr/bin/env python
# Copyright (C) 2016 Toyota Motor Corporation
import actionlib
import control_msgs.msg
import controller_manager_msgs.srv
import rospy
import trajectory_msgs.msg

#rospy.init_node('test')

class HsrGripper:

  _running= False
  
  def __init__(self):
    # initialize action client
    self.cli = actionlib.SimpleActionClient(
        '/hsrb/gripper_controller/follow_joint_trajectory',
        control_msgs.msg.FollowJointTrajectoryAction)

    # wait for the action server to establish connection
    self.cli.wait_for_server()

    # make sure the controller is running
    rospy.wait_for_service('/hsrb/controller_manager/list_controllers')
    list_controllers = rospy.ServiceProxy(
        '/hsrb/controller_manager/list_controllers',
        controller_manager_msgs.srv.ListControllers)
    self._running = False
    while self._running is False:
        rospy.sleep(0.1)
        for c in list_controllers().controller:
            if c.name == 'gripper_controller' and c.state == 'running':
                self._running = True
  def move_gripper(self, position_value, velocity, effort):
    # fill ROS message
    goal = control_msgs.msg.FollowJointTrajectoryGoal()
    traj = trajectory_msgs.msg.JointTrajectory()
    traj.joint_names = ["hand_motor_joint"]
    p = trajectory_msgs.msg.JointTrajectoryPoint()
    p.positions = [position_value]
    p.velocities = [velocity] #0
    p.effort = [effort] # 0.1
    p.time_from_start = rospy.Time(3)
    traj.points = [p]
    goal.trajectory = traj

    # send message to the action server
    self.cli.send_goal(goal)

    # wait for the action server to complete the order
    self.cli.wait_for_result()
    return self._running