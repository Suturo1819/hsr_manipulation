; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-srv)


;//! \htmlinclude UpdateWorld-request.msg.html

(cl:defclass <UpdateWorld-request> (roslisp-msg-protocol:ros-message)
  ((operation
    :reader operation
    :initarg :operation
    :type cl:fixnum
    :initform 0)
   (body
    :reader body
    :initarg :body
    :type giskard_msgs-msg:WorldBody
    :initform (cl:make-instance 'giskard_msgs-msg:WorldBody))
   (rigidly_attached
    :reader rigidly_attached
    :initarg :rigidly_attached
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass UpdateWorld-request (<UpdateWorld-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateWorld-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateWorld-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-srv:<UpdateWorld-request> is deprecated: use giskard_msgs-srv:UpdateWorld-request instead.")))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <UpdateWorld-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-srv:operation-val is deprecated.  Use giskard_msgs-srv:operation instead.")
  (operation m))

(cl:ensure-generic-function 'body-val :lambda-list '(m))
(cl:defmethod body-val ((m <UpdateWorld-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-srv:body-val is deprecated.  Use giskard_msgs-srv:body instead.")
  (body m))

(cl:ensure-generic-function 'rigidly_attached-val :lambda-list '(m))
(cl:defmethod rigidly_attached-val ((m <UpdateWorld-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-srv:rigidly_attached-val is deprecated.  Use giskard_msgs-srv:rigidly_attached instead.")
  (rigidly_attached m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <UpdateWorld-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-srv:pose-val is deprecated.  Use giskard_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UpdateWorld-request>)))
    "Constants for message type '<UpdateWorld-request>"
  '((:UNDEFINED . 0)
    (:ADD . 1)
    (:REMOVE . 2)
    (:ALTER . 3)
    (:REMOVE_ALL . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UpdateWorld-request)))
    "Constants for message type 'UpdateWorld-request"
  '((:UNDEFINED . 0)
    (:ADD . 1)
    (:REMOVE . 2)
    (:ALTER . 3)
    (:REMOVE_ALL . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateWorld-request>) ostream)
  "Serializes a message object of type '<UpdateWorld-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operation)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rigidly_attached) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateWorld-request>) istream)
  "Deserializes a message object of type '<UpdateWorld-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operation)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body) istream)
    (cl:setf (cl:slot-value msg 'rigidly_attached) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateWorld-request>)))
  "Returns string type for a service object of type '<UpdateWorld-request>"
  "giskard_msgs/UpdateWorldRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateWorld-request)))
  "Returns string type for a service object of type 'UpdateWorld-request"
  "giskard_msgs/UpdateWorldRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateWorld-request>)))
  "Returns md5sum for a message object of type '<UpdateWorld-request>"
  "9af3706c2feee114c99767eb9c5ebb7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateWorld-request)))
  "Returns md5sum for a message object of type 'UpdateWorld-request"
  "9af3706c2feee114c99767eb9c5ebb7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateWorld-request>)))
  "Returns full string definition for message of type '<UpdateWorld-request>"
  (cl:format cl:nil "~%~%~%uint8 UNDEFINED=0~%~%~%~%uint8 ADD=1~%~%~%~%uint8 REMOVE=2~%~%~%~%uint8 ALTER=3~%~%~%~%uint8 REMOVE_ALL=4~%~%~%uint8 operation~%~%~%giskard_msgs/WorldBody body~%~%~%~%bool rigidly_attached~%~%~%~%~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: giskard_msgs/WorldBody~%# Representation of a single body into the world ~%~%# Possible constants to fill into the type field~%uint8 UNDEFINED=0~%uint8 PRIMITIVE_BODY=1~%uint8 MESH_BODY=2~%uint8 URDF_BODY=3~%~%# The type of body that is represented~%uint8 type~%~%# The name with which the body shall be addressed in the world~%# Note: needs to be unique. If the name is already taken, an error will be returned~%string name~%~%# Only used if type==PRIMITIVE_BODY, otherwise ignored.~%shape_msgs/SolidPrimitive shape~%~%# Only used if type==MESH_BODY, otherwise ignored. ~%# Needs to be a ROS resource description, like:~%# 'package://my_pkg/meshes/some_mesh.dae'~%string mesh~%~%# Only used if type==URDF_BODY, otherwise ignored.~%# Needs to comply with the URDF definition from here:~%# http://wiki.ros.org/urdf/XML~%string urdf~%# Only used if type==URDF_BODY, otherwise ignored.~%# Optional, can be left empty.~%# If not empty, this will interpreted as a ROS topic over which ~%# message of type sensor_msgs/JointState are communicated that~%# contain the current state of all the movable joints described~%# in the urdf.~%string joint_state_topic~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateWorld-request)))
  "Returns full string definition for message of type 'UpdateWorld-request"
  (cl:format cl:nil "~%~%~%uint8 UNDEFINED=0~%~%~%~%uint8 ADD=1~%~%~%~%uint8 REMOVE=2~%~%~%~%uint8 ALTER=3~%~%~%~%uint8 REMOVE_ALL=4~%~%~%uint8 operation~%~%~%giskard_msgs/WorldBody body~%~%~%~%bool rigidly_attached~%~%~%~%~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: giskard_msgs/WorldBody~%# Representation of a single body into the world ~%~%# Possible constants to fill into the type field~%uint8 UNDEFINED=0~%uint8 PRIMITIVE_BODY=1~%uint8 MESH_BODY=2~%uint8 URDF_BODY=3~%~%# The type of body that is represented~%uint8 type~%~%# The name with which the body shall be addressed in the world~%# Note: needs to be unique. If the name is already taken, an error will be returned~%string name~%~%# Only used if type==PRIMITIVE_BODY, otherwise ignored.~%shape_msgs/SolidPrimitive shape~%~%# Only used if type==MESH_BODY, otherwise ignored. ~%# Needs to be a ROS resource description, like:~%# 'package://my_pkg/meshes/some_mesh.dae'~%string mesh~%~%# Only used if type==URDF_BODY, otherwise ignored.~%# Needs to comply with the URDF definition from here:~%# http://wiki.ros.org/urdf/XML~%string urdf~%# Only used if type==URDF_BODY, otherwise ignored.~%# Optional, can be left empty.~%# If not empty, this will interpreted as a ROS topic over which ~%# message of type sensor_msgs/JointState are communicated that~%# contain the current state of all the movable joints described~%# in the urdf.~%string joint_state_topic~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateWorld-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateWorld-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateWorld-request
    (cl:cons ':operation (operation msg))
    (cl:cons ':body (body msg))
    (cl:cons ':rigidly_attached (rigidly_attached msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude UpdateWorld-response.msg.html

(cl:defclass <UpdateWorld-response> (roslisp-msg-protocol:ros-message)
  ((error_codes
    :reader error_codes
    :initarg :error_codes
    :type cl:fixnum
    :initform 0)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform ""))
)

(cl:defclass UpdateWorld-response (<UpdateWorld-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateWorld-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateWorld-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-srv:<UpdateWorld-response> is deprecated: use giskard_msgs-srv:UpdateWorld-response instead.")))

(cl:ensure-generic-function 'error_codes-val :lambda-list '(m))
(cl:defmethod error_codes-val ((m <UpdateWorld-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-srv:error_codes-val is deprecated.  Use giskard_msgs-srv:error_codes instead.")
  (error_codes m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <UpdateWorld-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-srv:error_msg-val is deprecated.  Use giskard_msgs-srv:error_msg instead.")
  (error_msg m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UpdateWorld-response>)))
    "Constants for message type '<UpdateWorld-response>"
  '((:SUCCESS . 0)
    (:MISSING_BODY_ERROR . 1)
    (:DUPLICATE_BODY_ERROR . 2)
    (:CORRUPT_SHAPE_ERROR . 3)
    (:CORRUPT_MESH_ERROR . 4)
    (:CORRUPT_URDF_ERROR . 5)
    (:TF_ERROR . 6)
    (:MISSING_LINK_ERROR . 7)
    (:INVALID_OPERATION . 8)
    (:UNSUPPORTED_OPTIONS . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UpdateWorld-response)))
    "Constants for message type 'UpdateWorld-response"
  '((:SUCCESS . 0)
    (:MISSING_BODY_ERROR . 1)
    (:DUPLICATE_BODY_ERROR . 2)
    (:CORRUPT_SHAPE_ERROR . 3)
    (:CORRUPT_MESH_ERROR . 4)
    (:CORRUPT_URDF_ERROR . 5)
    (:TF_ERROR . 6)
    (:MISSING_LINK_ERROR . 7)
    (:INVALID_OPERATION . 8)
    (:UNSUPPORTED_OPTIONS . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateWorld-response>) ostream)
  "Serializes a message object of type '<UpdateWorld-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_codes)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateWorld-response>) istream)
  "Deserializes a message object of type '<UpdateWorld-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_codes)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateWorld-response>)))
  "Returns string type for a service object of type '<UpdateWorld-response>"
  "giskard_msgs/UpdateWorldResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateWorld-response)))
  "Returns string type for a service object of type 'UpdateWorld-response"
  "giskard_msgs/UpdateWorldResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateWorld-response>)))
  "Returns md5sum for a message object of type '<UpdateWorld-response>"
  "9af3706c2feee114c99767eb9c5ebb7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateWorld-response)))
  "Returns md5sum for a message object of type 'UpdateWorld-response"
  "9af3706c2feee114c99767eb9c5ebb7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateWorld-response>)))
  "Returns full string definition for message of type '<UpdateWorld-response>"
  (cl:format cl:nil "~%~%~%uint8 SUCCESS=0~%uint8 MISSING_BODY_ERROR=1~%uint8 DUPLICATE_BODY_ERROR=2~%uint8 CORRUPT_SHAPE_ERROR=3~%uint8 CORRUPT_MESH_ERROR=4~%uint8 CORRUPT_URDF_ERROR=5~%uint8 TF_ERROR=6~%uint8 MISSING_LINK_ERROR=7~%uint8 INVALID_OPERATION=8~%uint8 UNSUPPORTED_OPTIONS=9~%~%~%uint8 error_codes~%~%~%string error_msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateWorld-response)))
  "Returns full string definition for message of type 'UpdateWorld-response"
  (cl:format cl:nil "~%~%~%uint8 SUCCESS=0~%uint8 MISSING_BODY_ERROR=1~%uint8 DUPLICATE_BODY_ERROR=2~%uint8 CORRUPT_SHAPE_ERROR=3~%uint8 CORRUPT_MESH_ERROR=4~%uint8 CORRUPT_URDF_ERROR=5~%uint8 TF_ERROR=6~%uint8 MISSING_LINK_ERROR=7~%uint8 INVALID_OPERATION=8~%uint8 UNSUPPORTED_OPTIONS=9~%~%~%uint8 error_codes~%~%~%string error_msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateWorld-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateWorld-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateWorld-response
    (cl:cons ':error_codes (error_codes msg))
    (cl:cons ':error_msg (error_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateWorld)))
  'UpdateWorld-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateWorld)))
  'UpdateWorld-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateWorld)))
  "Returns string type for a service object of type '<UpdateWorld>"
  "giskard_msgs/UpdateWorld")