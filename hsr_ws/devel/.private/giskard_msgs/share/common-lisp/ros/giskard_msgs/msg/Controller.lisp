; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude Controller.msg.html

(cl:defclass <Controller> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (root_link
    :reader root_link
    :initarg :root_link
    :type cl:string
    :initform "")
   (tip_link
    :reader tip_link
    :initarg :tip_link
    :type cl:string
    :initform "")
   (p_gain
    :reader p_gain
    :initarg :p_gain
    :type cl:float
    :initform 0.0)
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (max_speed
    :reader max_speed
    :initarg :max_speed
    :type cl:float
    :initform 0.0)
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_state
    :reader goal_state
    :initarg :goal_state
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState)))
)

(cl:defclass Controller (<Controller>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Controller>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Controller)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<Controller> is deprecated: use giskard_msgs-msg:Controller instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:type-val is deprecated.  Use giskard_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'root_link-val :lambda-list '(m))
(cl:defmethod root_link-val ((m <Controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:root_link-val is deprecated.  Use giskard_msgs-msg:root_link instead.")
  (root_link m))

(cl:ensure-generic-function 'tip_link-val :lambda-list '(m))
(cl:defmethod tip_link-val ((m <Controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:tip_link-val is deprecated.  Use giskard_msgs-msg:tip_link instead.")
  (tip_link m))

(cl:ensure-generic-function 'p_gain-val :lambda-list '(m))
(cl:defmethod p_gain-val ((m <Controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:p_gain-val is deprecated.  Use giskard_msgs-msg:p_gain instead.")
  (p_gain m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <Controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:weight-val is deprecated.  Use giskard_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <Controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:max_speed-val is deprecated.  Use giskard_msgs-msg:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <Controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:goal_pose-val is deprecated.  Use giskard_msgs-msg:goal_pose instead.")
  (goal_pose m))

(cl:ensure-generic-function 'goal_state-val :lambda-list '(m))
(cl:defmethod goal_state-val ((m <Controller>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:goal_state-val is deprecated.  Use giskard_msgs-msg:goal_state instead.")
  (goal_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Controller>)))
    "Constants for message type '<Controller>"
  '((:UNDEFINED . 0)
    (:JOINT . 1)
    (:TRANSLATION_3D . 2)
    (:ROTATION_3D . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Controller)))
    "Constants for message type 'Controller"
  '((:UNDEFINED . 0)
    (:JOINT . 1)
    (:TRANSLATION_3D . 2)
    (:ROTATION_3D . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Controller>) ostream)
  "Serializes a message object of type '<Controller>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'root_link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'root_link))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tip_link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tip_link))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'p_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Controller>) istream)
  "Deserializes a message object of type '<Controller>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'root_link) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'root_link) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tip_link) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tip_link) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p_gain) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_speed) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Controller>)))
  "Returns string type for a message object of type '<Controller>"
  "giskard_msgs/Controller")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Controller)))
  "Returns string type for a message object of type 'Controller"
  "giskard_msgs/Controller")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Controller>)))
  "Returns md5sum for a message object of type '<Controller>"
  "642b5e2147410b76bd7b4f445ffc67f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Controller)))
  "Returns md5sum for a message object of type 'Controller"
  "642b5e2147410b76bd7b4f445ffc67f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Controller>)))
  "Returns full string definition for message of type '<Controller>"
  (cl:format cl:nil "# definitions of possible values to use as type~%uint8 UNDEFINED=0~%uint8 JOINT=1~%uint8 TRANSLATION_3D=2~%uint8 ROTATION_3D=3~%~%# use of the above constants to indicate the type of controller~%uint8 type~%~%# Name of the link that is at the start of the controlled kinematic chain~%string root_link~%~%# Name of the link that is at the end of the controlled kinematic chain~%string tip_link ~%~%# Proportional gain used by the controller~%float64 p_gain~%~%# Weight assigned to the controller within the cost-function solved in each cycle~%float64 weight~%~%# Maximum speed~%# m/s if type==TRANSLATION_3D~%# rad/s if type==ROTATION_3D~%# min(max_speed, joint_velocity_limit_specified_in_urdf) if type==JOINT~%float64 max_speed~%~%# controller goal, interpretation depends on value in type field~%# JOINT: ignores this field~%# TRANSLATION_3D: desired translation of tip_link relative to root_link~%# ROTATION_3D: desired orientation of tip_link relative to root_link~%geometry_msgs/PoseStamped goal_pose~%~%# controller goal, interpretation depends on value in type field~%# JOINT: reads the position values for all joints in the kinematic chain between root_link and tip_link~%# TRANSLATION_3D: ignores this field~%# ROTATION_3D: ignores this field~%sensor_msgs/JointState goal_state~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Controller)))
  "Returns full string definition for message of type 'Controller"
  (cl:format cl:nil "# definitions of possible values to use as type~%uint8 UNDEFINED=0~%uint8 JOINT=1~%uint8 TRANSLATION_3D=2~%uint8 ROTATION_3D=3~%~%# use of the above constants to indicate the type of controller~%uint8 type~%~%# Name of the link that is at the start of the controlled kinematic chain~%string root_link~%~%# Name of the link that is at the end of the controlled kinematic chain~%string tip_link ~%~%# Proportional gain used by the controller~%float64 p_gain~%~%# Weight assigned to the controller within the cost-function solved in each cycle~%float64 weight~%~%# Maximum speed~%# m/s if type==TRANSLATION_3D~%# rad/s if type==ROTATION_3D~%# min(max_speed, joint_velocity_limit_specified_in_urdf) if type==JOINT~%float64 max_speed~%~%# controller goal, interpretation depends on value in type field~%# JOINT: ignores this field~%# TRANSLATION_3D: desired translation of tip_link relative to root_link~%# ROTATION_3D: desired orientation of tip_link relative to root_link~%geometry_msgs/PoseStamped goal_pose~%~%# controller goal, interpretation depends on value in type field~%# JOINT: reads the position values for all joints in the kinematic chain between root_link and tip_link~%# TRANSLATION_3D: ignores this field~%# ROTATION_3D: ignores this field~%sensor_msgs/JointState goal_state~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Controller>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'root_link))
     4 (cl:length (cl:slot-value msg 'tip_link))
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Controller>))
  "Converts a ROS message object to a list"
  (cl:list 'Controller
    (cl:cons ':type (type msg))
    (cl:cons ':root_link (root_link msg))
    (cl:cons ':tip_link (tip_link msg))
    (cl:cons ':p_gain (p_gain msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':goal_pose (goal_pose msg))
    (cl:cons ':goal_state (goal_state msg))
))
