; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude SemanticFloat64.msg.html

(cl:defclass <SemanticFloat64> (roslisp-msg-protocol:ros-message)
  ((semantics
    :reader semantics
    :initarg :semantics
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass SemanticFloat64 (<SemanticFloat64>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticFloat64>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticFloat64)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<SemanticFloat64> is deprecated: use giskard_msgs-msg:SemanticFloat64 instead.")))

(cl:ensure-generic-function 'semantics-val :lambda-list '(m))
(cl:defmethod semantics-val ((m <SemanticFloat64>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:semantics-val is deprecated.  Use giskard_msgs-msg:semantics instead.")
  (semantics m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SemanticFloat64>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:value-val is deprecated.  Use giskard_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticFloat64>) ostream)
  "Serializes a message object of type '<SemanticFloat64>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'semantics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'semantics))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticFloat64>) istream)
  "Deserializes a message object of type '<SemanticFloat64>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'semantics) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'semantics) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticFloat64>)))
  "Returns string type for a message object of type '<SemanticFloat64>"
  "giskard_msgs/SemanticFloat64")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticFloat64)))
  "Returns string type for a message object of type 'SemanticFloat64"
  "giskard_msgs/SemanticFloat64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticFloat64>)))
  "Returns md5sum for a message object of type '<SemanticFloat64>"
  "e4a58ae766646c1b94adf962a4b9641b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticFloat64)))
  "Returns md5sum for a message object of type 'SemanticFloat64"
  "e4a58ae766646c1b94adf962a4b9641b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticFloat64>)))
  "Returns full string definition for message of type '<SemanticFloat64>"
  (cl:format cl:nil "# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticFloat64)))
  "Returns full string definition for message of type 'SemanticFloat64"
  (cl:format cl:nil "# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticFloat64>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'semantics))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticFloat64>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticFloat64
    (cl:cons ':semantics (semantics msg))
    (cl:cons ':value (value msg))
))
