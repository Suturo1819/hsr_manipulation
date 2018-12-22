; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude Constraint.msg.html

(cl:defclass <Constraint> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (lower
    :reader lower
    :initarg :lower
    :type cl:float
    :initform 0.0)
   (upper
    :reader upper
    :initarg :upper
    :type cl:float
    :initform 0.0))
)

(cl:defclass Constraint (<Constraint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Constraint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Constraint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<Constraint> is deprecated: use giskard_msgs-msg:Constraint instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Constraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:name-val is deprecated.  Use giskard_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'lower-val :lambda-list '(m))
(cl:defmethod lower-val ((m <Constraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:lower-val is deprecated.  Use giskard_msgs-msg:lower instead.")
  (lower m))

(cl:ensure-generic-function 'upper-val :lambda-list '(m))
(cl:defmethod upper-val ((m <Constraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:upper-val is deprecated.  Use giskard_msgs-msg:upper instead.")
  (upper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Constraint>) ostream)
  "Serializes a message object of type '<Constraint>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lower))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'upper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Constraint>) istream)
  "Deserializes a message object of type '<Constraint>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lower) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upper) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Constraint>)))
  "Returns string type for a message object of type '<Constraint>"
  "giskard_msgs/Constraint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Constraint)))
  "Returns string type for a message object of type 'Constraint"
  "giskard_msgs/Constraint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Constraint>)))
  "Returns md5sum for a message object of type '<Constraint>"
  "b108bdb410bd66d771fb782664678118")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Constraint)))
  "Returns md5sum for a message object of type 'Constraint"
  "b108bdb410bd66d771fb782664678118")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Constraint>)))
  "Returns full string definition for message of type '<Constraint>"
  (cl:format cl:nil "# a string identifying the expression behind the constraint~%string name~%~%# desired lower and upper boundaries that shall be enforced~%float64 lower~%float64 upper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Constraint)))
  "Returns full string definition for message of type 'Constraint"
  (cl:format cl:nil "# a string identifying the expression behind the constraint~%string name~%~%# desired lower and upper boundaries that shall be enforced~%float64 lower~%float64 upper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Constraint>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Constraint>))
  "Converts a ROS message object to a list"
  (cl:list 'Constraint
    (cl:cons ':name (name msg))
    (cl:cons ':lower (lower msg))
    (cl:cons ':upper (upper msg))
))
