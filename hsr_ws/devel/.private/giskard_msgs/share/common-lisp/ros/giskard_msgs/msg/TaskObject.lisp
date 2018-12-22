; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude TaskObject.msg.html

(cl:defclass <TaskObject> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (role
    :reader role
    :initarg :role
    :type cl:fixnum
    :initform 0)
   (liquid_volume
    :reader liquid_volume
    :initarg :liquid_volume
    :type cl:float
    :initform 0.0))
)

(cl:defclass TaskObject (<TaskObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<TaskObject> is deprecated: use giskard_msgs-msg:TaskObject instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TaskObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:name-val is deprecated.  Use giskard_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TaskObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:pose-val is deprecated.  Use giskard_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'role-val :lambda-list '(m))
(cl:defmethod role-val ((m <TaskObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:role-val is deprecated.  Use giskard_msgs-msg:role instead.")
  (role m))

(cl:ensure-generic-function 'liquid_volume-val :lambda-list '(m))
(cl:defmethod liquid_volume-val ((m <TaskObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:liquid_volume-val is deprecated.  Use giskard_msgs-msg:liquid_volume instead.")
  (liquid_volume m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskObject>)))
    "Constants for message type '<TaskObject>"
  '((:INVALID_ROLE . 0)
    (:SOURCE_ROLE . 1)
    (:TARGET_ROLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskObject)))
    "Constants for message type 'TaskObject"
  '((:INVALID_ROLE . 0)
    (:SOURCE_ROLE . 1)
    (:TARGET_ROLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskObject>) ostream)
  "Serializes a message object of type '<TaskObject>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'role)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'liquid_volume))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskObject>) istream)
  "Deserializes a message object of type '<TaskObject>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'role)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'liquid_volume) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskObject>)))
  "Returns string type for a message object of type '<TaskObject>"
  "giskard_msgs/TaskObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskObject)))
  "Returns string type for a message object of type 'TaskObject"
  "giskard_msgs/TaskObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskObject>)))
  "Returns md5sum for a message object of type '<TaskObject>"
  "1ba4d8b9cd8d97703bb62b4d8fc1956c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskObject)))
  "Returns md5sum for a message object of type 'TaskObject"
  "1ba4d8b9cd8d97703bb62b4d8fc1956c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskObject>)))
  "Returns full string definition for message of type '<TaskObject>"
  (cl:format cl:nil "# A representation of an object which is part of an action.~%# Used for querying task-specific constraints for giskard controllers.~%~%# definitions of possible values for field 'role'~%uint8 INVALID_ROLE=0 # make sure users set a proper role~%uint8 SOURCE_ROLE=1 # object acts as the source of the action~%uint8 TARGET_ROLE=2 # object acts as the target of the action~%~%# unique identifier of the object~%string name~%~%# perceived pose of the object~%geometry_msgs/PoseStamped pose~%~%# role the object will play within a task~%uint8 role~%~%# in case the object is filled with a liquid~%float64 liquid_volume # in cubic-meters~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskObject)))
  "Returns full string definition for message of type 'TaskObject"
  (cl:format cl:nil "# A representation of an object which is part of an action.~%# Used for querying task-specific constraints for giskard controllers.~%~%# definitions of possible values for field 'role'~%uint8 INVALID_ROLE=0 # make sure users set a proper role~%uint8 SOURCE_ROLE=1 # object acts as the source of the action~%uint8 TARGET_ROLE=2 # object acts as the target of the action~%~%# unique identifier of the object~%string name~%~%# perceived pose of the object~%geometry_msgs/PoseStamped pose~%~%# role the object will play within a task~%uint8 role~%~%# in case the object is filled with a liquid~%float64 liquid_volume # in cubic-meters~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskObject>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskObject>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskObject
    (cl:cons ':name (name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':role (role msg))
    (cl:cons ':liquid_volume (liquid_volume msg))
))
