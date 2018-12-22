; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude ControllerListGoal.msg.html

(cl:defclass <ControllerListGoal> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (controllers
    :reader controllers
    :initarg :controllers
    :type (cl:vector giskard_msgs-msg:Controller)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:Controller :initial-element (cl:make-instance 'giskard_msgs-msg:Controller)))
   (yaml
    :reader yaml
    :initarg :yaml
    :type cl:string
    :initform ""))
)

(cl:defclass ControllerListGoal (<ControllerListGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerListGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerListGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<ControllerListGoal> is deprecated: use giskard_msgs-msg:ControllerListGoal instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ControllerListGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:type-val is deprecated.  Use giskard_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'controllers-val :lambda-list '(m))
(cl:defmethod controllers-val ((m <ControllerListGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:controllers-val is deprecated.  Use giskard_msgs-msg:controllers instead.")
  (controllers m))

(cl:ensure-generic-function 'yaml-val :lambda-list '(m))
(cl:defmethod yaml-val ((m <ControllerListGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:yaml-val is deprecated.  Use giskard_msgs-msg:yaml instead.")
  (yaml m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ControllerListGoal>)))
    "Constants for message type '<ControllerListGoal>"
  '((:STANDARD_CONTROLLER . 0)
    (:YAML_CONTROLLER . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ControllerListGoal)))
    "Constants for message type 'ControllerListGoal"
  '((:STANDARD_CONTROLLER . 0)
    (:YAML_CONTROLLER . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerListGoal>) ostream)
  "Serializes a message object of type '<ControllerListGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controllers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'controllers))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'yaml))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'yaml))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerListGoal>) istream)
  "Deserializes a message object of type '<ControllerListGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controllers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controllers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:Controller))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaml) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'yaml) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerListGoal>)))
  "Returns string type for a message object of type '<ControllerListGoal>"
  "giskard_msgs/ControllerListGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerListGoal)))
  "Returns string type for a message object of type 'ControllerListGoal"
  "giskard_msgs/ControllerListGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerListGoal>)))
  "Returns md5sum for a message object of type '<ControllerListGoal>"
  "582aca5a6624e5c5864af311c24b71bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerListGoal)))
  "Returns md5sum for a message object of type 'ControllerListGoal"
  "582aca5a6624e5c5864af311c24b71bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerListGoal>)))
  "Returns full string definition for message of type '<ControllerListGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal message~%~%# definitions of possible values to use as type~%uint8 STANDARD_CONTROLLER=0~%uint8 YAML_CONTROLLER=1~%~%# use of the above constants to indicate the type of command~%uint8 type~%~%# list of controller specifications to run~%# will only be interpreted if type==STANDARD_CONTROLLER~%giskard_msgs/Controller[] controllers~%~%# YAML description of a controller to run~%# will only be interpreted if type==YAML_CONTROLLER~%string yaml~%~%================================================================================~%MSG: giskard_msgs/Controller~%# definitions of possible values to use as type~%uint8 UNDEFINED=0~%uint8 JOINT=1~%uint8 TRANSLATION_3D=2~%uint8 ROTATION_3D=3~%~%# use of the above constants to indicate the type of controller~%uint8 type~%~%# Name of the link that is at the start of the controlled kinematic chain~%string root_link~%~%# Name of the link that is at the end of the controlled kinematic chain~%string tip_link ~%~%# Proportional gain used by the controller~%float64 p_gain~%~%# Weight assigned to the controller within the cost-function solved in each cycle~%float64 weight~%~%# Maximum speed~%# m/s if type==TRANSLATION_3D~%# rad/s if type==ROTATION_3D~%# min(max_speed, joint_velocity_limit_specified_in_urdf) if type==JOINT~%float64 max_speed~%~%# controller goal, interpretation depends on value in type field~%# JOINT: ignores this field~%# TRANSLATION_3D: desired translation of tip_link relative to root_link~%# ROTATION_3D: desired orientation of tip_link relative to root_link~%geometry_msgs/PoseStamped goal_pose~%~%# controller goal, interpretation depends on value in type field~%# JOINT: reads the position values for all joints in the kinematic chain between root_link and tip_link~%# TRANSLATION_3D: ignores this field~%# ROTATION_3D: ignores this field~%sensor_msgs/JointState goal_state~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerListGoal)))
  "Returns full string definition for message of type 'ControllerListGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal message~%~%# definitions of possible values to use as type~%uint8 STANDARD_CONTROLLER=0~%uint8 YAML_CONTROLLER=1~%~%# use of the above constants to indicate the type of command~%uint8 type~%~%# list of controller specifications to run~%# will only be interpreted if type==STANDARD_CONTROLLER~%giskard_msgs/Controller[] controllers~%~%# YAML description of a controller to run~%# will only be interpreted if type==YAML_CONTROLLER~%string yaml~%~%================================================================================~%MSG: giskard_msgs/Controller~%# definitions of possible values to use as type~%uint8 UNDEFINED=0~%uint8 JOINT=1~%uint8 TRANSLATION_3D=2~%uint8 ROTATION_3D=3~%~%# use of the above constants to indicate the type of controller~%uint8 type~%~%# Name of the link that is at the start of the controlled kinematic chain~%string root_link~%~%# Name of the link that is at the end of the controlled kinematic chain~%string tip_link ~%~%# Proportional gain used by the controller~%float64 p_gain~%~%# Weight assigned to the controller within the cost-function solved in each cycle~%float64 weight~%~%# Maximum speed~%# m/s if type==TRANSLATION_3D~%# rad/s if type==ROTATION_3D~%# min(max_speed, joint_velocity_limit_specified_in_urdf) if type==JOINT~%float64 max_speed~%~%# controller goal, interpretation depends on value in type field~%# JOINT: ignores this field~%# TRANSLATION_3D: desired translation of tip_link relative to root_link~%# ROTATION_3D: desired orientation of tip_link relative to root_link~%geometry_msgs/PoseStamped goal_pose~%~%# controller goal, interpretation depends on value in type field~%# JOINT: reads the position values for all joints in the kinematic chain between root_link and tip_link~%# TRANSLATION_3D: ignores this field~%# ROTATION_3D: ignores this field~%sensor_msgs/JointState goal_state~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerListGoal>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controllers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'yaml))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerListGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerListGoal
    (cl:cons ':type (type msg))
    (cl:cons ':controllers (controllers msg))
    (cl:cons ':yaml (yaml msg))
))
