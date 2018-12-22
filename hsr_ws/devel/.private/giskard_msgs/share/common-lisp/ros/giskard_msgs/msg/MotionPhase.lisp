; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude MotionPhase.msg.html

(cl:defclass <MotionPhase> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (constraints
    :reader constraints
    :initarg :constraints
    :type (cl:vector giskard_msgs-msg:Constraint)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:Constraint :initial-element (cl:make-instance 'giskard_msgs-msg:Constraint))))
)

(cl:defclass MotionPhase (<MotionPhase>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionPhase>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionPhase)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<MotionPhase> is deprecated: use giskard_msgs-msg:MotionPhase instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MotionPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:name-val is deprecated.  Use giskard_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'constraints-val :lambda-list '(m))
(cl:defmethod constraints-val ((m <MotionPhase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:constraints-val is deprecated.  Use giskard_msgs-msg:constraints instead.")
  (constraints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionPhase>) ostream)
  "Serializes a message object of type '<MotionPhase>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'constraints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'constraints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionPhase>) istream)
  "Deserializes a message object of type '<MotionPhase>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'constraints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'constraints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:Constraint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionPhase>)))
  "Returns string type for a message object of type '<MotionPhase>"
  "giskard_msgs/MotionPhase")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionPhase)))
  "Returns string type for a message object of type 'MotionPhase"
  "giskard_msgs/MotionPhase")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionPhase>)))
  "Returns md5sum for a message object of type '<MotionPhase>"
  "a0948cf625fccf5454fdbf95bfb4d2d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionPhase)))
  "Returns md5sum for a message object of type 'MotionPhase"
  "a0948cf625fccf5454fdbf95bfb4d2d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionPhase>)))
  "Returns full string definition for message of type '<MotionPhase>"
  (cl:format cl:nil "# definition of a task-specific motion phase~%~%# identifier of the motion phase~%string name~%~%# a list of constraints representing the motion goal~%giskard_msgs/Constraint[] constraints~%~%================================================================================~%MSG: giskard_msgs/Constraint~%# a string identifying the expression behind the constraint~%string name~%~%# desired lower and upper boundaries that shall be enforced~%float64 lower~%float64 upper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionPhase)))
  "Returns full string definition for message of type 'MotionPhase"
  (cl:format cl:nil "# definition of a task-specific motion phase~%~%# identifier of the motion phase~%string name~%~%# a list of constraints representing the motion goal~%giskard_msgs/Constraint[] constraints~%~%================================================================================~%MSG: giskard_msgs/Constraint~%# a string identifying the expression behind the constraint~%string name~%~%# desired lower and upper boundaries that shall be enforced~%float64 lower~%float64 upper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionPhase>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'constraints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionPhase>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionPhase
    (cl:cons ':name (name msg))
    (cl:cons ':constraints (constraints msg))
))
