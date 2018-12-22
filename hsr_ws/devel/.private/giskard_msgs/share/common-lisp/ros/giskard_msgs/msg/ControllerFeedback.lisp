; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude ControllerFeedback.msg.html

(cl:defclass <ControllerFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (watchdog_active
    :reader watchdog_active
    :initarg :watchdog_active
    :type cl:boolean
    :initform cl:nil)
   (commands
    :reader commands
    :initarg :commands
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (slacks
    :reader slacks
    :initarg :slacks
    :type (cl:vector giskard_msgs-msg:SemanticFloat64)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:SemanticFloat64 :initial-element (cl:make-instance 'giskard_msgs-msg:SemanticFloat64)))
   (convergence_features
    :reader convergence_features
    :initarg :convergence_features
    :type (cl:vector giskard_msgs-msg:SemanticFloat64)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:SemanticFloat64 :initial-element (cl:make-instance 'giskard_msgs-msg:SemanticFloat64)))
   (doubles
    :reader doubles
    :initarg :doubles
    :type (cl:vector giskard_msgs-msg:SemanticFloat64)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:SemanticFloat64 :initial-element (cl:make-instance 'giskard_msgs-msg:SemanticFloat64)))
   (vectors
    :reader vectors
    :initarg :vectors
    :type (cl:vector giskard_msgs-msg:SemanticVector3)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:SemanticVector3 :initial-element (cl:make-instance 'giskard_msgs-msg:SemanticVector3)))
   (current_command
    :reader current_command
    :initarg :current_command
    :type giskard_msgs-msg:WholeBodyCommand
    :initform (cl:make-instance 'giskard_msgs-msg:WholeBodyCommand))
   (current_command_hash
    :reader current_command_hash
    :initarg :current_command_hash
    :type cl:integer
    :initform 0))
)

(cl:defclass ControllerFeedback (<ControllerFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<ControllerFeedback> is deprecated: use giskard_msgs-msg:ControllerFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:header-val is deprecated.  Use giskard_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'watchdog_active-val :lambda-list '(m))
(cl:defmethod watchdog_active-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:watchdog_active-val is deprecated.  Use giskard_msgs-msg:watchdog_active instead.")
  (watchdog_active m))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:commands-val is deprecated.  Use giskard_msgs-msg:commands instead.")
  (commands m))

(cl:ensure-generic-function 'slacks-val :lambda-list '(m))
(cl:defmethod slacks-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:slacks-val is deprecated.  Use giskard_msgs-msg:slacks instead.")
  (slacks m))

(cl:ensure-generic-function 'convergence_features-val :lambda-list '(m))
(cl:defmethod convergence_features-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:convergence_features-val is deprecated.  Use giskard_msgs-msg:convergence_features instead.")
  (convergence_features m))

(cl:ensure-generic-function 'doubles-val :lambda-list '(m))
(cl:defmethod doubles-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:doubles-val is deprecated.  Use giskard_msgs-msg:doubles instead.")
  (doubles m))

(cl:ensure-generic-function 'vectors-val :lambda-list '(m))
(cl:defmethod vectors-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:vectors-val is deprecated.  Use giskard_msgs-msg:vectors instead.")
  (vectors m))

(cl:ensure-generic-function 'current_command-val :lambda-list '(m))
(cl:defmethod current_command-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:current_command-val is deprecated.  Use giskard_msgs-msg:current_command instead.")
  (current_command m))

(cl:ensure-generic-function 'current_command_hash-val :lambda-list '(m))
(cl:defmethod current_command_hash-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:current_command_hash-val is deprecated.  Use giskard_msgs-msg:current_command_hash instead.")
  (current_command_hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerFeedback>) ostream)
  "Serializes a message object of type '<ControllerFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'watchdog_active) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'commands) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'slacks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'slacks))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'convergence_features))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'convergence_features))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'doubles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'doubles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vectors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vectors))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_command) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_command_hash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_command_hash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_command_hash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_command_hash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'current_command_hash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'current_command_hash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'current_command_hash)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'current_command_hash)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerFeedback>) istream)
  "Deserializes a message object of type '<ControllerFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'watchdog_active) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'commands) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'slacks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'slacks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:SemanticFloat64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'convergence_features) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'convergence_features)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:SemanticFloat64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'doubles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'doubles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:SemanticFloat64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vectors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vectors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:SemanticVector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_command) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_command_hash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_command_hash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_command_hash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_command_hash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'current_command_hash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'current_command_hash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'current_command_hash)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'current_command_hash)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerFeedback>)))
  "Returns string type for a message object of type '<ControllerFeedback>"
  "giskard_msgs/ControllerFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerFeedback)))
  "Returns string type for a message object of type 'ControllerFeedback"
  "giskard_msgs/ControllerFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerFeedback>)))
  "Returns md5sum for a message object of type '<ControllerFeedback>"
  "6aebd1d0d24e8782cff521a077935cd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerFeedback)))
  "Returns md5sum for a message object of type 'ControllerFeedback"
  "6aebd1d0d24e8782cff521a077935cd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerFeedback>)))
  "Returns full string definition for message of type '<ControllerFeedback>"
  (cl:format cl:nil "# Feedback provided by giskard controllers.~%~%# Header to communicate timestamps, and being compatible with message-filters.~%std_msgs/Header header~%# Flag to indicate whether the watchdog is active~%bool watchdog_active~%# Commands issued to motor controllers, expressed with semantics hints.~%sensor_msgs/JointState commands~%# Slack values of task functions, expressed with semantics hints.~%giskard_msgs/SemanticFloat64[] slacks~%# Internal double expressions used to decide convergence~%giskard_msgs/SemanticFloat64[] convergence_features~%# Internal double expressions wired through for debugging~%giskard_msgs/SemanticFloat64[] doubles~%# Internal vector expressions wired through for debugging~%giskard_msgs/SemanticVector3[] vectors~%~%# Command that the controller is currently pursuing~%giskard_msgs/WholeBodyCommand current_command~%# Hash of the current command calculated by the controller~%uint64 current_command_hash~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: giskard_msgs/SemanticFloat64~%# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%================================================================================~%MSG: giskard_msgs/SemanticVector3~%# A 3d vector with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%geometry_msgs/Vector3 value~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: giskard_msgs/WholeBodyCommand~%# A whole-body command message for a mobile manipulator with a morphology ~%# compatible with the PR2 robot. The message was designed to support alternative~%# ways of specifying a command.~%~%# definitions of possible values to use as type~%uint8 STANDARD_CONTROLLER=0~%uint8 YAML_CONTROLLER=1~%~%# use of the above constants to indicate the type of command~%uint8 type~%~%# standard controllers~%giskard_msgs/ArmCommand right_ee # command for right arm~%giskard_msgs/ArmCommand left_ee # command for left arm~%~%# yaml controllers~%string yaml_spec # complete specification of controller~%giskard_msgs/SemanticFloat64[] convergence_thresholds # thresholds used to decide convergence of motion~%~%================================================================================~%MSG: giskard_msgs/ArmCommand~%# A command message for robotic manipulators that exposes a couple~%# of alternative ways of specifying commands.~%~%# Definitions of possible values used for type~%uint8 IGNORE_GOAL=0 # Ignore the rest of this command.~%uint8 CARTESIAN_GOAL=1 # Use the PoseStamped.~%uint8 JOINT_GOAL=2 # Use the list of floats.~%~%# use one of the above constants to indicate the type of command~%uint8 type~%~%# Cartesian goal for the arm.~%# Note: The header will be used to resolve goal using tf.~%geometry_msgs/PoseStamped goal_pose~%~%# Joint goal for the arm.~%float64[] goal_configuration~%~%# List of internal double expressions with thresholds to decide convergence~%giskard_msgs/SemanticFloat64[] convergence_thresholds~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerFeedback)))
  "Returns full string definition for message of type 'ControllerFeedback"
  (cl:format cl:nil "# Feedback provided by giskard controllers.~%~%# Header to communicate timestamps, and being compatible with message-filters.~%std_msgs/Header header~%# Flag to indicate whether the watchdog is active~%bool watchdog_active~%# Commands issued to motor controllers, expressed with semantics hints.~%sensor_msgs/JointState commands~%# Slack values of task functions, expressed with semantics hints.~%giskard_msgs/SemanticFloat64[] slacks~%# Internal double expressions used to decide convergence~%giskard_msgs/SemanticFloat64[] convergence_features~%# Internal double expressions wired through for debugging~%giskard_msgs/SemanticFloat64[] doubles~%# Internal vector expressions wired through for debugging~%giskard_msgs/SemanticVector3[] vectors~%~%# Command that the controller is currently pursuing~%giskard_msgs/WholeBodyCommand current_command~%# Hash of the current command calculated by the controller~%uint64 current_command_hash~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: giskard_msgs/SemanticFloat64~%# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%================================================================================~%MSG: giskard_msgs/SemanticVector3~%# A 3d vector with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%geometry_msgs/Vector3 value~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: giskard_msgs/WholeBodyCommand~%# A whole-body command message for a mobile manipulator with a morphology ~%# compatible with the PR2 robot. The message was designed to support alternative~%# ways of specifying a command.~%~%# definitions of possible values to use as type~%uint8 STANDARD_CONTROLLER=0~%uint8 YAML_CONTROLLER=1~%~%# use of the above constants to indicate the type of command~%uint8 type~%~%# standard controllers~%giskard_msgs/ArmCommand right_ee # command for right arm~%giskard_msgs/ArmCommand left_ee # command for left arm~%~%# yaml controllers~%string yaml_spec # complete specification of controller~%giskard_msgs/SemanticFloat64[] convergence_thresholds # thresholds used to decide convergence of motion~%~%================================================================================~%MSG: giskard_msgs/ArmCommand~%# A command message for robotic manipulators that exposes a couple~%# of alternative ways of specifying commands.~%~%# Definitions of possible values used for type~%uint8 IGNORE_GOAL=0 # Ignore the rest of this command.~%uint8 CARTESIAN_GOAL=1 # Use the PoseStamped.~%uint8 JOINT_GOAL=2 # Use the list of floats.~%~%# use one of the above constants to indicate the type of command~%uint8 type~%~%# Cartesian goal for the arm.~%# Note: The header will be used to resolve goal using tf.~%geometry_msgs/PoseStamped goal_pose~%~%# Joint goal for the arm.~%float64[] goal_configuration~%~%# List of internal double expressions with thresholds to decide convergence~%giskard_msgs/SemanticFloat64[] convergence_thresholds~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'commands))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'slacks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'convergence_features) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'doubles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vectors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_command))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':watchdog_active (watchdog_active msg))
    (cl:cons ':commands (commands msg))
    (cl:cons ':slacks (slacks msg))
    (cl:cons ':convergence_features (convergence_features msg))
    (cl:cons ':doubles (doubles msg))
    (cl:cons ':vectors (vectors msg))
    (cl:cons ':current_command (current_command msg))
    (cl:cons ':current_command_hash (current_command_hash msg))
))
