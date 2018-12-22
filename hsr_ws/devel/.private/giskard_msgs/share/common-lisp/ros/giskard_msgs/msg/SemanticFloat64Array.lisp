; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude SemanticFloat64Array.msg.html

(cl:defclass <SemanticFloat64Array> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector giskard_msgs-msg:SemanticFloat64)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:SemanticFloat64 :initial-element (cl:make-instance 'giskard_msgs-msg:SemanticFloat64))))
)

(cl:defclass SemanticFloat64Array (<SemanticFloat64Array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticFloat64Array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticFloat64Array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<SemanticFloat64Array> is deprecated: use giskard_msgs-msg:SemanticFloat64Array instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SemanticFloat64Array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:data-val is deprecated.  Use giskard_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticFloat64Array>) ostream)
  "Serializes a message object of type '<SemanticFloat64Array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticFloat64Array>) istream)
  "Deserializes a message object of type '<SemanticFloat64Array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:SemanticFloat64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticFloat64Array>)))
  "Returns string type for a message object of type '<SemanticFloat64Array>"
  "giskard_msgs/SemanticFloat64Array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticFloat64Array)))
  "Returns string type for a message object of type 'SemanticFloat64Array"
  "giskard_msgs/SemanticFloat64Array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticFloat64Array>)))
  "Returns md5sum for a message object of type '<SemanticFloat64Array>"
  "96b61963e755db3864fbf71022c3fb5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticFloat64Array)))
  "Returns md5sum for a message object of type 'SemanticFloat64Array"
  "96b61963e755db3864fbf71022c3fb5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticFloat64Array>)))
  "Returns full string definition for message of type '<SemanticFloat64Array>"
  (cl:format cl:nil "# An array floating-point with semantics hint attached.~%giskard_msgs/SemanticFloat64[] data~%~%================================================================================~%MSG: giskard_msgs/SemanticFloat64~%# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticFloat64Array)))
  "Returns full string definition for message of type 'SemanticFloat64Array"
  (cl:format cl:nil "# An array floating-point with semantics hint attached.~%giskard_msgs/SemanticFloat64[] data~%~%================================================================================~%MSG: giskard_msgs/SemanticFloat64~%# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticFloat64Array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticFloat64Array>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticFloat64Array
    (cl:cons ':data (data msg))
))
