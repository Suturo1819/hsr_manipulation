; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude Task.msg.html

(cl:defclass <Task> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector giskard_msgs-msg:TaskObject)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:TaskObject :initial-element (cl:make-instance 'giskard_msgs-msg:TaskObject)))
   (pour_volume
    :reader pour_volume
    :initarg :pour_volume
    :type cl:float
    :initform 0.0))
)

(cl:defclass Task (<Task>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<Task> is deprecated: use giskard_msgs-msg:Task instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:type-val is deprecated.  Use giskard_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:objects-val is deprecated.  Use giskard_msgs-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'pour_volume-val :lambda-list '(m))
(cl:defmethod pour_volume-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:pour_volume-val is deprecated.  Use giskard_msgs-msg:pour_volume instead.")
  (pour_volume m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task>) ostream)
  "Serializes a message object of type '<Task>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pour_volume))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task>) istream)
  "Deserializes a message object of type '<Task>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:TaskObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pour_volume) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task>)))
  "Returns string type for a message object of type '<Task>"
  "giskard_msgs/Task")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task)))
  "Returns string type for a message object of type 'Task"
  "giskard_msgs/Task")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task>)))
  "Returns md5sum for a message object of type '<Task>"
  "6e32762b7c3b4d6c977fae7bf0e0a0db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task)))
  "Returns md5sum for a message object of type 'Task"
  "6e32762b7c3b4d6c977fae7bf0e0a0db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task>)))
  "Returns full string definition for message of type '<Task>"
  (cl:format cl:nil "# identifier of the task type~%string type~%~%# objects involved in the action~%giskard_msgs/TaskObject[] objects~%~%# for pouring tasks~%float64 pour_volume # in cubic-meters~%~%================================================================================~%MSG: giskard_msgs/TaskObject~%# A representation of an object which is part of an action.~%# Used for querying task-specific constraints for giskard controllers.~%~%# definitions of possible values for field 'role'~%uint8 INVALID_ROLE=0 # make sure users set a proper role~%uint8 SOURCE_ROLE=1 # object acts as the source of the action~%uint8 TARGET_ROLE=2 # object acts as the target of the action~%~%# unique identifier of the object~%string name~%~%# perceived pose of the object~%geometry_msgs/PoseStamped pose~%~%# role the object will play within a task~%uint8 role~%~%# in case the object is filled with a liquid~%float64 liquid_volume # in cubic-meters~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task)))
  "Returns full string definition for message of type 'Task"
  (cl:format cl:nil "# identifier of the task type~%string type~%~%# objects involved in the action~%giskard_msgs/TaskObject[] objects~%~%# for pouring tasks~%float64 pour_volume # in cubic-meters~%~%================================================================================~%MSG: giskard_msgs/TaskObject~%# A representation of an object which is part of an action.~%# Used for querying task-specific constraints for giskard controllers.~%~%# definitions of possible values for field 'role'~%uint8 INVALID_ROLE=0 # make sure users set a proper role~%uint8 SOURCE_ROLE=1 # object acts as the source of the action~%uint8 TARGET_ROLE=2 # object acts as the target of the action~%~%# unique identifier of the object~%string name~%~%# perceived pose of the object~%geometry_msgs/PoseStamped pose~%~%# role the object will play within a task~%uint8 role~%~%# in case the object is filled with a liquid~%float64 liquid_volume # in cubic-meters~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task>))
  "Converts a ROS message object to a list"
  (cl:list 'Task
    (cl:cons ':type (type msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':pour_volume (pour_volume msg))
))
