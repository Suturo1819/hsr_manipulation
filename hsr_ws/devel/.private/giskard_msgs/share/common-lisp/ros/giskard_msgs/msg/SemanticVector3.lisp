; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude SemanticVector3.msg.html

(cl:defclass <SemanticVector3> (roslisp-msg-protocol:ros-message)
  ((semantics
    :reader semantics
    :initarg :semantics
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass SemanticVector3 (<SemanticVector3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticVector3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticVector3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<SemanticVector3> is deprecated: use giskard_msgs-msg:SemanticVector3 instead.")))

(cl:ensure-generic-function 'semantics-val :lambda-list '(m))
(cl:defmethod semantics-val ((m <SemanticVector3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:semantics-val is deprecated.  Use giskard_msgs-msg:semantics instead.")
  (semantics m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SemanticVector3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:value-val is deprecated.  Use giskard_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticVector3>) ostream)
  "Serializes a message object of type '<SemanticVector3>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'semantics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'semantics))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticVector3>) istream)
  "Deserializes a message object of type '<SemanticVector3>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'semantics) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'semantics) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticVector3>)))
  "Returns string type for a message object of type '<SemanticVector3>"
  "giskard_msgs/SemanticVector3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticVector3)))
  "Returns string type for a message object of type 'SemanticVector3"
  "giskard_msgs/SemanticVector3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticVector3>)))
  "Returns md5sum for a message object of type '<SemanticVector3>"
  "c66c67f1caae2f292daae03f1eb49dc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticVector3)))
  "Returns md5sum for a message object of type 'SemanticVector3"
  "c66c67f1caae2f292daae03f1eb49dc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticVector3>)))
  "Returns full string definition for message of type '<SemanticVector3>"
  (cl:format cl:nil "# A 3d vector with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%geometry_msgs/Vector3 value~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticVector3)))
  "Returns full string definition for message of type 'SemanticVector3"
  (cl:format cl:nil "# A 3d vector with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%geometry_msgs/Vector3 value~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticVector3>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'semantics))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticVector3>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticVector3
    (cl:cons ':semantics (semantics msg))
    (cl:cons ':value (value msg))
))
