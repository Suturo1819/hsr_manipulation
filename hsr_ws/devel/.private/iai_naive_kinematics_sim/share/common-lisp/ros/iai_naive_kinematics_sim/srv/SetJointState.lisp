; Auto-generated. Do not edit!


(cl:in-package iai_naive_kinematics_sim-srv)


;//! \htmlinclude SetJointState-request.msg.html

(cl:defclass <SetJointState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState)))
)

(cl:defclass SetJointState-request (<SetJointState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_naive_kinematics_sim-srv:<SetJointState-request> is deprecated: use iai_naive_kinematics_sim-srv:SetJointState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetJointState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_naive_kinematics_sim-srv:state-val is deprecated.  Use iai_naive_kinematics_sim-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointState-request>) ostream)
  "Serializes a message object of type '<SetJointState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointState-request>) istream)
  "Deserializes a message object of type '<SetJointState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointState-request>)))
  "Returns string type for a service object of type '<SetJointState-request>"
  "iai_naive_kinematics_sim/SetJointStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointState-request)))
  "Returns string type for a service object of type 'SetJointState-request"
  "iai_naive_kinematics_sim/SetJointStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointState-request>)))
  "Returns md5sum for a message object of type '<SetJointState-request>"
  "aa4ba8fc35255d7bdcb6580da3f69cf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointState-request)))
  "Returns md5sum for a message object of type 'SetJointState-request"
  "aa4ba8fc35255d7bdcb6580da3f69cf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointState-request>)))
  "Returns full string definition for message of type '<SetJointState-request>"
  (cl:format cl:nil "sensor_msgs/JointState state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointState-request)))
  "Returns full string definition for message of type 'SetJointState-request"
  (cl:format cl:nil "sensor_msgs/JointState state~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetJointState-response.msg.html

(cl:defclass <SetJointState-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetJointState-response (<SetJointState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_naive_kinematics_sim-srv:<SetJointState-response> is deprecated: use iai_naive_kinematics_sim-srv:SetJointState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJointState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_naive_kinematics_sim-srv:success-val is deprecated.  Use iai_naive_kinematics_sim-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetJointState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_naive_kinematics_sim-srv:message-val is deprecated.  Use iai_naive_kinematics_sim-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointState-response>) ostream)
  "Serializes a message object of type '<SetJointState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointState-response>) istream)
  "Deserializes a message object of type '<SetJointState-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointState-response>)))
  "Returns string type for a service object of type '<SetJointState-response>"
  "iai_naive_kinematics_sim/SetJointStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointState-response)))
  "Returns string type for a service object of type 'SetJointState-response"
  "iai_naive_kinematics_sim/SetJointStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointState-response>)))
  "Returns md5sum for a message object of type '<SetJointState-response>"
  "aa4ba8fc35255d7bdcb6580da3f69cf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointState-response)))
  "Returns md5sum for a message object of type 'SetJointState-response"
  "aa4ba8fc35255d7bdcb6580da3f69cf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointState-response>)))
  "Returns full string definition for message of type '<SetJointState-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointState-response)))
  "Returns full string definition for message of type 'SetJointState-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointState-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointState-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointState)))
  'SetJointState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointState)))
  'SetJointState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointState)))
  "Returns string type for a service object of type '<SetJointState>"
  "iai_naive_kinematics_sim/SetJointState")