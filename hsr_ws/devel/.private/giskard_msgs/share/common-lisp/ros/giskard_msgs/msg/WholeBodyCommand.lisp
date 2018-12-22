; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude WholeBodyCommand.msg.html

(cl:defclass <WholeBodyCommand> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (right_ee
    :reader right_ee
    :initarg :right_ee
    :type giskard_msgs-msg:ArmCommand
    :initform (cl:make-instance 'giskard_msgs-msg:ArmCommand))
   (left_ee
    :reader left_ee
    :initarg :left_ee
    :type giskard_msgs-msg:ArmCommand
    :initform (cl:make-instance 'giskard_msgs-msg:ArmCommand))
   (yaml_spec
    :reader yaml_spec
    :initarg :yaml_spec
    :type cl:string
    :initform "")
   (convergence_thresholds
    :reader convergence_thresholds
    :initarg :convergence_thresholds
    :type (cl:vector giskard_msgs-msg:SemanticFloat64)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:SemanticFloat64 :initial-element (cl:make-instance 'giskard_msgs-msg:SemanticFloat64))))
)

(cl:defclass WholeBodyCommand (<WholeBodyCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WholeBodyCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WholeBodyCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<WholeBodyCommand> is deprecated: use giskard_msgs-msg:WholeBodyCommand instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <WholeBodyCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:type-val is deprecated.  Use giskard_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'right_ee-val :lambda-list '(m))
(cl:defmethod right_ee-val ((m <WholeBodyCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:right_ee-val is deprecated.  Use giskard_msgs-msg:right_ee instead.")
  (right_ee m))

(cl:ensure-generic-function 'left_ee-val :lambda-list '(m))
(cl:defmethod left_ee-val ((m <WholeBodyCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:left_ee-val is deprecated.  Use giskard_msgs-msg:left_ee instead.")
  (left_ee m))

(cl:ensure-generic-function 'yaml_spec-val :lambda-list '(m))
(cl:defmethod yaml_spec-val ((m <WholeBodyCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:yaml_spec-val is deprecated.  Use giskard_msgs-msg:yaml_spec instead.")
  (yaml_spec m))

(cl:ensure-generic-function 'convergence_thresholds-val :lambda-list '(m))
(cl:defmethod convergence_thresholds-val ((m <WholeBodyCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:convergence_thresholds-val is deprecated.  Use giskard_msgs-msg:convergence_thresholds instead.")
  (convergence_thresholds m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WholeBodyCommand>)))
    "Constants for message type '<WholeBodyCommand>"
  '((:STANDARD_CONTROLLER . 0)
    (:YAML_CONTROLLER . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WholeBodyCommand)))
    "Constants for message type 'WholeBodyCommand"
  '((:STANDARD_CONTROLLER . 0)
    (:YAML_CONTROLLER . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WholeBodyCommand>) ostream)
  "Serializes a message object of type '<WholeBodyCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_ee) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_ee) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'yaml_spec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'yaml_spec))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'convergence_thresholds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'convergence_thresholds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WholeBodyCommand>) istream)
  "Deserializes a message object of type '<WholeBodyCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_ee) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_ee) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaml_spec) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'yaml_spec) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'convergence_thresholds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'convergence_thresholds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:SemanticFloat64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WholeBodyCommand>)))
  "Returns string type for a message object of type '<WholeBodyCommand>"
  "giskard_msgs/WholeBodyCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WholeBodyCommand)))
  "Returns string type for a message object of type 'WholeBodyCommand"
  "giskard_msgs/WholeBodyCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WholeBodyCommand>)))
  "Returns md5sum for a message object of type '<WholeBodyCommand>"
  "097f13fb94c4a201b4330a8facff3abe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WholeBodyCommand)))
  "Returns md5sum for a message object of type 'WholeBodyCommand"
  "097f13fb94c4a201b4330a8facff3abe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WholeBodyCommand>)))
  "Returns full string definition for message of type '<WholeBodyCommand>"
  (cl:format cl:nil "# A whole-body command message for a mobile manipulator with a morphology ~%# compatible with the PR2 robot. The message was designed to support alternative~%# ways of specifying a command.~%~%# definitions of possible values to use as type~%uint8 STANDARD_CONTROLLER=0~%uint8 YAML_CONTROLLER=1~%~%# use of the above constants to indicate the type of command~%uint8 type~%~%# standard controllers~%giskard_msgs/ArmCommand right_ee # command for right arm~%giskard_msgs/ArmCommand left_ee # command for left arm~%~%# yaml controllers~%string yaml_spec # complete specification of controller~%giskard_msgs/SemanticFloat64[] convergence_thresholds # thresholds used to decide convergence of motion~%~%================================================================================~%MSG: giskard_msgs/ArmCommand~%# A command message for robotic manipulators that exposes a couple~%# of alternative ways of specifying commands.~%~%# Definitions of possible values used for type~%uint8 IGNORE_GOAL=0 # Ignore the rest of this command.~%uint8 CARTESIAN_GOAL=1 # Use the PoseStamped.~%uint8 JOINT_GOAL=2 # Use the list of floats.~%~%# use one of the above constants to indicate the type of command~%uint8 type~%~%# Cartesian goal for the arm.~%# Note: The header will be used to resolve goal using tf.~%geometry_msgs/PoseStamped goal_pose~%~%# Joint goal for the arm.~%float64[] goal_configuration~%~%# List of internal double expressions with thresholds to decide convergence~%giskard_msgs/SemanticFloat64[] convergence_thresholds~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: giskard_msgs/SemanticFloat64~%# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WholeBodyCommand)))
  "Returns full string definition for message of type 'WholeBodyCommand"
  (cl:format cl:nil "# A whole-body command message for a mobile manipulator with a morphology ~%# compatible with the PR2 robot. The message was designed to support alternative~%# ways of specifying a command.~%~%# definitions of possible values to use as type~%uint8 STANDARD_CONTROLLER=0~%uint8 YAML_CONTROLLER=1~%~%# use of the above constants to indicate the type of command~%uint8 type~%~%# standard controllers~%giskard_msgs/ArmCommand right_ee # command for right arm~%giskard_msgs/ArmCommand left_ee # command for left arm~%~%# yaml controllers~%string yaml_spec # complete specification of controller~%giskard_msgs/SemanticFloat64[] convergence_thresholds # thresholds used to decide convergence of motion~%~%================================================================================~%MSG: giskard_msgs/ArmCommand~%# A command message for robotic manipulators that exposes a couple~%# of alternative ways of specifying commands.~%~%# Definitions of possible values used for type~%uint8 IGNORE_GOAL=0 # Ignore the rest of this command.~%uint8 CARTESIAN_GOAL=1 # Use the PoseStamped.~%uint8 JOINT_GOAL=2 # Use the list of floats.~%~%# use one of the above constants to indicate the type of command~%uint8 type~%~%# Cartesian goal for the arm.~%# Note: The header will be used to resolve goal using tf.~%geometry_msgs/PoseStamped goal_pose~%~%# Joint goal for the arm.~%float64[] goal_configuration~%~%# List of internal double expressions with thresholds to decide convergence~%giskard_msgs/SemanticFloat64[] convergence_thresholds~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: giskard_msgs/SemanticFloat64~%# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WholeBodyCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_ee))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_ee))
     4 (cl:length (cl:slot-value msg 'yaml_spec))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'convergence_thresholds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WholeBodyCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'WholeBodyCommand
    (cl:cons ':type (type msg))
    (cl:cons ':right_ee (right_ee msg))
    (cl:cons ':left_ee (left_ee msg))
    (cl:cons ':yaml_spec (yaml_spec msg))
    (cl:cons ':convergence_thresholds (convergence_thresholds msg))
))
