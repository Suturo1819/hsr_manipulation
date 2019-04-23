import actionlib
import control_msgs.msg
import controller_manager_msgs.srv
import rospy
import trajectory_msgs.msg

class HsrOmnibase:
  
  _running = False
  
  def __init__(self):
  
    self.cli = actionlib.SimpleActionClient(
        '/hsrb/omni_base_controller/follow_joint_trajectory',
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
            if c.name == 'omni_base_controller' and c.state == 'running':
                self._running = True
                
  def move_base(self, x, y, z):
    # fill ROS message
    goal = control_msgs.msg.FollowJointTrajectoryGoal()
    traj = trajectory_msgs.msg.JointTrajectory()
    traj.joint_names = ["odom_x", "odom_y", "odom_t"]
    p = trajectory_msgs.msg.JointTrajectoryPoint()
    p.positions = [x, y, z]
    p.velocities = [0, 0, 0]
    p.time_from_start = rospy.Time(15)
    traj.points = [p]
    goal.trajectory = traj

    # send message to the action server
    self.cli.send_goal(goal)

    # wait for the action server to complete the order
    self.cli.wait_for_result()
    return self._running

if __name__ == '__main__':
  rospy.init_node('check_basis')
  basis = HsrOmnibase()
  basis.move_base(-0.00, -0.00, -0.235)
  print("move base is done.")
