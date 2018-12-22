; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude ArmCommand.msg.html

(cl:defclass <ArmCommand> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_configuration
    :reader goal_configuration
    :initarg :goal_configuration
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (convergence_thresholds
    :reader convergence_thresholds
    :initarg :convergence_thresholds
    :type (cl:vector giskard_msgs-msg:SemanticFloat64)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:SemanticFloat64 :initial-element (cl:make-instance 'giskard_msgs-msg:SemanticFloat64))))
)

(cl:defclass ArmCommand (<ArmCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<ArmCommand> is deprecated: use giskard_msgs-msg:ArmCommand instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:type-val is deprecated.  Use giskard_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <ArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:goal_pose-val is deprecated.  Use giskard_msgs-msg:goal_pose instead.")
  (goal_pose m))

(cl:ensure-generic-function 'goal_configuration-val :lambda-list '(m))
(cl:defmethod goal_configuration-val ((m <ArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:goal_configuration-val is deprecated.  Use giskard_msgs-msg:goal_configuration instead.")
  (goal_configuration m))

(cl:ensure-generic-function 'convergence_thresholds-val :lambda-list '(m))
(cl:defmethod convergence_thresholds-val ((m <ArmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:convergence_thresholds-val is deprecated.  Use giskard_msgs-msg:convergence_thresholds instead.")
  (convergence_thresholds m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ArmCommand>)))
    "Constants for message type '<ArmCommand>"
  '((:IGNORE_GOAL . 0)
    (:CARTESIAN_GOAL . 1)
    (:JOINT_GOAL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ArmCommand)))
    "Constants for message type 'ArmCommand"
  '((:IGNORE_GOAL . 0)
    (:CARTESIAN_GOAL . 1)
    (:JOINT_GOAL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmCommand>) ostream)
  "Serializes a message object of type '<ArmCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_configuration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'goal_configuration))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'convergence_thresholds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'convergence_thresholds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmCommand>) istream)
  "Deserializes a message object of type '<ArmCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_configuration) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_configuration)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmCommand>)))
  "Returns string type for a message object of type '<ArmCommand>"
  "giskard_msgs/ArmCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmCommand)))
  "Returns string type for a message object of type 'ArmCommand"
  "giskard_msgs/ArmCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmCommand>)))
  "Returns md5sum for a message object of type '<ArmCommand>"
  "41a9ac8c4e1e8072ebaff33076861080")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmCommand)))
  "Returns md5sum for a message object of type 'ArmCommand"
  "41a9ac8c4e1e8072ebaff33076861080")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmCommand>)))
  "Returns full string definition for message of type '<ArmCommand>"
  (cl:format cl:nil "# A command message for robotic manipulators that exposes a couple~%# of alternative ways of specifying commands.~%~%# Definitions of possible values used for type~%uint8 IGNORE_GOAL=0 # Ignore the rest of this command.~%uint8 CARTESIAN_GOAL=1 # Use the PoseStamped.~%uint8 JOINT_GOAL=2 # Use the list of floats.~%~%# use one of the above constants to indicate the type of command~%uint8 type~%~%# Cartesian goal for the arm.~%# Note: The header will be used to resolve goal using tf.~%geometry_msgs/PoseStamped goal_pose~%~%# Joint goal for the arm.~%float64[] goal_configuration~%~%# List of internal double expressions with thresholds to decide convergence~%giskard_msgs/SemanticFloat64[] convergence_thresholds~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: giskard_msgs/SemanticFloat64~%# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmCommand)))
  "Returns full string definition for message of type 'ArmCommand"
  (cl:format cl:nil "# A command message for robotic manipulators that exposes a couple~%# of alternative ways of specifying commands.~%~%# Definitions of possible values used for type~%uint8 IGNORE_GOAL=0 # Ignore the rest of this command.~%uint8 CARTESIAN_GOAL=1 # Use the PoseStamped.~%uint8 JOINT_GOAL=2 # Use the list of floats.~%~%# use one of the above constants to indicate the type of command~%uint8 type~%~%# Cartesian goal for the arm.~%# Note: The header will be used to resolve goal using tf.~%geometry_msgs/PoseStamped goal_pose~%~%# Joint goal for the arm.~%float64[] goal_configuration~%~%# List of internal double expressions with thresholds to decide convergence~%giskard_msgs/SemanticFloat64[] convergence_thresholds~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: giskard_msgs/SemanticFloat64~%# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_configuration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'convergence_thresholds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmCommand
    (cl:cons ':type (type msg))
    (cl:cons ':goal_pose (goal_pose msg))
    (cl:cons ':goal_configuration (goal_configuration msg))
    (cl:cons ':convergence_thresholds (convergence_thresholds msg))
))
