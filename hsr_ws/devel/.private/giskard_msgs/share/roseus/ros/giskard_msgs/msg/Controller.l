;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::Controller)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'Controller (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::CONTROLLER")
  (make-package "GISKARD_MSGS::CONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude Controller.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*UNDEFINED*" (find-package "GISKARD_MSGS::CONTROLLER"))
(shadow '*UNDEFINED* (find-package "GISKARD_MSGS::CONTROLLER"))
(defconstant giskard_msgs::Controller::*UNDEFINED* 0)
(intern "*JOINT*" (find-package "GISKARD_MSGS::CONTROLLER"))
(shadow '*JOINT* (find-package "GISKARD_MSGS::CONTROLLER"))
(defconstant giskard_msgs::Controller::*JOINT* 1)
(intern "*TRANSLATION_3D*" (find-package "GISKARD_MSGS::CONTROLLER"))
(shadow '*TRANSLATION_3D* (find-package "GISKARD_MSGS::CONTROLLER"))
(defconstant giskard_msgs::Controller::*TRANSLATION_3D* 2)
(intern "*ROTATION_3D*" (find-package "GISKARD_MSGS::CONTROLLER"))
(shadow '*ROTATION_3D* (find-package "GISKARD_MSGS::CONTROLLER"))
(defconstant giskard_msgs::Controller::*ROTATION_3D* 3)
(defclass giskard_msgs::Controller
  :super ros::object
  :slots (_type _root_link _tip_link _p_gain _weight _max_speed _goal_pose _goal_state ))

(defmethod giskard_msgs::Controller
  (:init
   (&key
    ((:type __type) 0)
    ((:root_link __root_link) "")
    ((:tip_link __tip_link) "")
    ((:p_gain __p_gain) 0.0)
    ((:weight __weight) 0.0)
    ((:max_speed __max_speed) 0.0)
    ((:goal_pose __goal_pose) (instance geometry_msgs::PoseStamped :init))
    ((:goal_state __goal_state) (instance sensor_msgs::JointState :init))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _root_link (string __root_link))
   (setq _tip_link (string __tip_link))
   (setq _p_gain (float __p_gain))
   (setq _weight (float __weight))
   (setq _max_speed (float __max_speed))
   (setq _goal_pose __goal_pose)
   (setq _goal_state __goal_state)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:root_link
   (&optional __root_link)
   (if __root_link (setq _root_link __root_link)) _root_link)
  (:tip_link
   (&optional __tip_link)
   (if __tip_link (setq _tip_link __tip_link)) _tip_link)
  (:p_gain
   (&optional __p_gain)
   (if __p_gain (setq _p_gain __p_gain)) _p_gain)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:max_speed
   (&optional __max_speed)
   (if __max_speed (setq _max_speed __max_speed)) _max_speed)
  (:goal_pose
   (&rest __goal_pose)
   (if (keywordp (car __goal_pose))
       (send* _goal_pose __goal_pose)
     (progn
       (if __goal_pose (setq _goal_pose (car __goal_pose)))
       _goal_pose)))
  (:goal_state
   (&rest __goal_state)
   (if (keywordp (car __goal_state))
       (send* _goal_state __goal_state)
     (progn
       (if __goal_state (setq _goal_state (car __goal_state)))
       _goal_state)))
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; string _root_link
    4 (length _root_link)
    ;; string _tip_link
    4 (length _tip_link)
    ;; float64 _p_gain
    8
    ;; float64 _weight
    8
    ;; float64 _max_speed
    8
    ;; geometry_msgs/PoseStamped _goal_pose
    (send _goal_pose :serialization-length)
    ;; sensor_msgs/JointState _goal_state
    (send _goal_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; string _root_link
       (write-long (length _root_link) s) (princ _root_link s)
     ;; string _tip_link
       (write-long (length _tip_link) s) (princ _tip_link s)
     ;; float64 _p_gain
       (sys::poke _p_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_speed
       (sys::poke _max_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/PoseStamped _goal_pose
       (send _goal_pose :serialize s)
     ;; sensor_msgs/JointState _goal_state
       (send _goal_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _root_link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _root_link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _tip_link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tip_link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _p_gain
     (setq _p_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_speed
     (setq _max_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/PoseStamped _goal_pose
     (send _goal_pose :deserialize buf ptr-) (incf ptr- (send _goal_pose :serialization-length))
   ;; sensor_msgs/JointState _goal_state
     (send _goal_state :deserialize buf ptr-) (incf ptr- (send _goal_state :serialization-length))
   ;;
   self)
  )

(setf (get giskard_msgs::Controller :md5sum-) "642b5e2147410b76bd7b4f445ffc67f2")
(setf (get giskard_msgs::Controller :datatype-) "giskard_msgs/Controller")
(setf (get giskard_msgs::Controller :definition-)
      "# definitions of possible values to use as type
uint8 UNDEFINED=0
uint8 JOINT=1
uint8 TRANSLATION_3D=2
uint8 ROTATION_3D=3

# use of the above constants to indicate the type of controller
uint8 type

# Name of the link that is at the start of the controlled kinematic chain
string root_link

# Name of the link that is at the end of the controlled kinematic chain
string tip_link 

# Proportional gain used by the controller
float64 p_gain

# Weight assigned to the controller within the cost-function solved in each cycle
float64 weight

# Maximum speed
# m/s if type==TRANSLATION_3D
# rad/s if type==ROTATION_3D
# min(max_speed, joint_velocity_limit_specified_in_urdf) if type==JOINT
float64 max_speed

# controller goal, interpretation depends on value in type field
# JOINT: ignores this field
# TRANSLATION_3D: desired translation of tip_link relative to root_link
# ROTATION_3D: desired orientation of tip_link relative to root_link
geometry_msgs/PoseStamped goal_pose

# controller goal, interpretation depends on value in type field
# JOINT: reads the position values for all joints in the kinematic chain between root_link and tip_link
# TRANSLATION_3D: ignores this field
# ROTATION_3D: ignores this field
sensor_msgs/JointState goal_state

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

")



(provide :giskard_msgs/Controller "642b5e2147410b76bd7b4f445ffc67f2")


