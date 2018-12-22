; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-srv)


;//! \htmlinclude QueryMotion-request.msg.html

(cl:defclass <QueryMotion-request> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type giskard_msgs-msg:Task
    :initform (cl:make-instance 'giskard_msgs-msg:Task)))
)

(cl:defclass QueryMotion-request (<QueryMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-srv:<QueryMotion-request> is deprecated: use giskard_msgs-srv:QueryMotion-request instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <QueryMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-srv:task-val is deprecated.  Use giskard_msgs-srv:task instead.")
  (task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryMotion-request>) ostream)
  "Serializes a message object of type '<QueryMotion-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryMotion-request>) istream)
  "Deserializes a message object of type '<QueryMotion-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryMotion-request>)))
  "Returns string type for a service object of type '<QueryMotion-request>"
  "giskard_msgs/QueryMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryMotion-request)))
  "Returns string type for a service object of type 'QueryMotion-request"
  "giskard_msgs/QueryMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryMotion-request>)))
  "Returns md5sum for a message object of type '<QueryMotion-request>"
  "bb38ae62c664e4cfff9e4ebb97163477")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryMotion-request)))
  "Returns md5sum for a message object of type 'QueryMotion-request"
  "bb38ae62c664e4cfff9e4ebb97163477")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryMotion-request>)))
  "Returns full string definition for message of type '<QueryMotion-request>"
  (cl:format cl:nil "~%giskard_msgs/Task task~%~%================================================================================~%MSG: giskard_msgs/Task~%# identifier of the task type~%string type~%~%# objects involved in the action~%giskard_msgs/TaskObject[] objects~%~%# for pouring tasks~%float64 pour_volume # in cubic-meters~%~%================================================================================~%MSG: giskard_msgs/TaskObject~%# A representation of an object which is part of an action.~%# Used for querying task-specific constraints for giskard controllers.~%~%# definitions of possible values for field 'role'~%uint8 INVALID_ROLE=0 # make sure users set a proper role~%uint8 SOURCE_ROLE=1 # object acts as the source of the action~%uint8 TARGET_ROLE=2 # object acts as the target of the action~%~%# unique identifier of the object~%string name~%~%# perceived pose of the object~%geometry_msgs/PoseStamped pose~%~%# role the object will play within a task~%uint8 role~%~%# in case the object is filled with a liquid~%float64 liquid_volume # in cubic-meters~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryMotion-request)))
  "Returns full string definition for message of type 'QueryMotion-request"
  (cl:format cl:nil "~%giskard_msgs/Task task~%~%================================================================================~%MSG: giskard_msgs/Task~%# identifier of the task type~%string type~%~%# objects involved in the action~%giskard_msgs/TaskObject[] objects~%~%# for pouring tasks~%float64 pour_volume # in cubic-meters~%~%================================================================================~%MSG: giskard_msgs/TaskObject~%# A representation of an object which is part of an action.~%# Used for querying task-specific constraints for giskard controllers.~%~%# definitions of possible values for field 'role'~%uint8 INVALID_ROLE=0 # make sure users set a proper role~%uint8 SOURCE_ROLE=1 # object acts as the source of the action~%uint8 TARGET_ROLE=2 # object acts as the target of the action~%~%# unique identifier of the object~%string name~%~%# perceived pose of the object~%geometry_msgs/PoseStamped pose~%~%# role the object will play within a task~%uint8 role~%~%# in case the object is filled with a liquid~%float64 liquid_volume # in cubic-meters~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryMotion-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryMotion-request
    (cl:cons ':task (task msg))
))
;//! \htmlinclude QueryMotion-response.msg.html

(cl:defclass <QueryMotion-response> (roslisp-msg-protocol:ros-message)
  ((phases
    :reader phases
    :initarg :phases
    :type (cl:vector giskard_msgs-msg:MotionPhase)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:MotionPhase :initial-element (cl:make-instance 'giskard_msgs-msg:MotionPhase))))
)

(cl:defclass QueryMotion-response (<QueryMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-srv:<QueryMotion-response> is deprecated: use giskard_msgs-srv:QueryMotion-response instead.")))

(cl:ensure-generic-function 'phases-val :lambda-list '(m))
(cl:defmethod phases-val ((m <QueryMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-srv:phases-val is deprecated.  Use giskard_msgs-srv:phases instead.")
  (phases m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryMotion-response>) ostream)
  "Serializes a message object of type '<QueryMotion-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'phases))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'phases))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryMotion-response>) istream)
  "Deserializes a message object of type '<QueryMotion-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'phases) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'phases)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:MotionPhase))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryMotion-response>)))
  "Returns string type for a service object of type '<QueryMotion-response>"
  "giskard_msgs/QueryMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryMotion-response)))
  "Returns string type for a service object of type 'QueryMotion-response"
  "giskard_msgs/QueryMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryMotion-response>)))
  "Returns md5sum for a message object of type '<QueryMotion-response>"
  "bb38ae62c664e4cfff9e4ebb97163477")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryMotion-response)))
  "Returns md5sum for a message object of type 'QueryMotion-response"
  "bb38ae62c664e4cfff9e4ebb97163477")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryMotion-response>)))
  "Returns full string definition for message of type '<QueryMotion-response>"
  (cl:format cl:nil "~%giskard_msgs/MotionPhase[] phases~%~%~%================================================================================~%MSG: giskard_msgs/MotionPhase~%# definition of a task-specific motion phase~%~%# identifier of the motion phase~%string name~%~%# a list of constraints representing the motion goal~%giskard_msgs/Constraint[] constraints~%~%================================================================================~%MSG: giskard_msgs/Constraint~%# a string identifying the expression behind the constraint~%string name~%~%# desired lower and upper boundaries that shall be enforced~%float64 lower~%float64 upper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryMotion-response)))
  "Returns full string definition for message of type 'QueryMotion-response"
  (cl:format cl:nil "~%giskard_msgs/MotionPhase[] phases~%~%~%================================================================================~%MSG: giskard_msgs/MotionPhase~%# definition of a task-specific motion phase~%~%# identifier of the motion phase~%string name~%~%# a list of constraints representing the motion goal~%giskard_msgs/Constraint[] constraints~%~%================================================================================~%MSG: giskard_msgs/Constraint~%# a string identifying the expression behind the constraint~%string name~%~%# desired lower and upper boundaries that shall be enforced~%float64 lower~%float64 upper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryMotion-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'phases) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryMotion-response
    (cl:cons ':phases (phases msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QueryMotion)))
  'QueryMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QueryMotion)))
  'QueryMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryMotion)))
  "Returns string type for a service object of type '<QueryMotion>"
  "giskard_msgs/QueryMotion")