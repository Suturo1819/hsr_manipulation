; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude SemanticBool.msg.html

(cl:defclass <SemanticBool> (roslisp-msg-protocol:ros-message)
  ((semantics
    :reader semantics
    :initarg :semantics
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SemanticBool (<SemanticBool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticBool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticBool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<SemanticBool> is deprecated: use giskard_msgs-msg:SemanticBool instead.")))

(cl:ensure-generic-function 'semantics-val :lambda-list '(m))
(cl:defmethod semantics-val ((m <SemanticBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:semantics-val is deprecated.  Use giskard_msgs-msg:semantics instead.")
  (semantics m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SemanticBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:value-val is deprecated.  Use giskard_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticBool>) ostream)
  "Serializes a message object of type '<SemanticBool>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'semantics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'semantics))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticBool>) istream)
  "Deserializes a message object of type '<SemanticBool>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'semantics) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'semantics) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticBool>)))
  "Returns string type for a message object of type '<SemanticBool>"
  "giskard_msgs/SemanticBool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticBool)))
  "Returns string type for a message object of type 'SemanticBool"
  "giskard_msgs/SemanticBool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticBool>)))
  "Returns md5sum for a message object of type '<SemanticBool>"
  "5b2f92c216bbfd6638af0bfc9228a3e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticBool)))
  "Returns md5sum for a message object of type 'SemanticBool"
  "5b2f92c216bbfd6638af0bfc9228a3e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticBool>)))
  "Returns full string definition for message of type '<SemanticBool>"
  (cl:format cl:nil "# A bool with semantics hint attached.~%# Note: I know this is not much but better than just the bool. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticBool)))
  "Returns full string definition for message of type 'SemanticBool"
  (cl:format cl:nil "# A bool with semantics hint attached.~%# Note: I know this is not much but better than just the bool. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticBool>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'semantics))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticBool>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticBool
    (cl:cons ':semantics (semantics msg))
    (cl:cons ':value (value msg))
))
