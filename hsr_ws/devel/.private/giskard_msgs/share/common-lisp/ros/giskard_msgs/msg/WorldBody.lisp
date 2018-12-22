; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude WorldBody.msg.html

(cl:defclass <WorldBody> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (shape
    :reader shape
    :initarg :shape
    :type shape_msgs-msg:SolidPrimitive
    :initform (cl:make-instance 'shape_msgs-msg:SolidPrimitive))
   (mesh
    :reader mesh
    :initarg :mesh
    :type cl:string
    :initform "")
   (urdf
    :reader urdf
    :initarg :urdf
    :type cl:string
    :initform "")
   (joint_state_topic
    :reader joint_state_topic
    :initarg :joint_state_topic
    :type cl:string
    :initform ""))
)

(cl:defclass WorldBody (<WorldBody>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorldBody>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorldBody)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<WorldBody> is deprecated: use giskard_msgs-msg:WorldBody instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <WorldBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:type-val is deprecated.  Use giskard_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <WorldBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:name-val is deprecated.  Use giskard_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <WorldBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:shape-val is deprecated.  Use giskard_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'mesh-val :lambda-list '(m))
(cl:defmethod mesh-val ((m <WorldBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:mesh-val is deprecated.  Use giskard_msgs-msg:mesh instead.")
  (mesh m))

(cl:ensure-generic-function 'urdf-val :lambda-list '(m))
(cl:defmethod urdf-val ((m <WorldBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:urdf-val is deprecated.  Use giskard_msgs-msg:urdf instead.")
  (urdf m))

(cl:ensure-generic-function 'joint_state_topic-val :lambda-list '(m))
(cl:defmethod joint_state_topic-val ((m <WorldBody>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:joint_state_topic-val is deprecated.  Use giskard_msgs-msg:joint_state_topic instead.")
  (joint_state_topic m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WorldBody>)))
    "Constants for message type '<WorldBody>"
  '((:UNDEFINED . 0)
    (:PRIMITIVE_BODY . 1)
    (:MESH_BODY . 2)
    (:URDF_BODY . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WorldBody)))
    "Constants for message type 'WorldBody"
  '((:UNDEFINED . 0)
    (:PRIMITIVE_BODY . 1)
    (:MESH_BODY . 2)
    (:URDF_BODY . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorldBody>) ostream)
  "Serializes a message object of type '<WorldBody>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mesh))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mesh))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'urdf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'urdf))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_state_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_state_topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorldBody>) istream)
  "Deserializes a message object of type '<WorldBody>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mesh) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mesh) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'urdf) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'urdf) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_state_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_state_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorldBody>)))
  "Returns string type for a message object of type '<WorldBody>"
  "giskard_msgs/WorldBody")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorldBody)))
  "Returns string type for a message object of type 'WorldBody"
  "giskard_msgs/WorldBody")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorldBody>)))
  "Returns md5sum for a message object of type '<WorldBody>"
  "f763aeaaddb71192fb2371cfede6d783")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorldBody)))
  "Returns md5sum for a message object of type 'WorldBody"
  "f763aeaaddb71192fb2371cfede6d783")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorldBody>)))
  "Returns full string definition for message of type '<WorldBody>"
  (cl:format cl:nil "# Representation of a single body into the world ~%~%# Possible constants to fill into the type field~%uint8 UNDEFINED=0~%uint8 PRIMITIVE_BODY=1~%uint8 MESH_BODY=2~%uint8 URDF_BODY=3~%~%# The type of body that is represented~%uint8 type~%~%# The name with which the body shall be addressed in the world~%# Note: needs to be unique. If the name is already taken, an error will be returned~%string name~%~%# Only used if type==PRIMITIVE_BODY, otherwise ignored.~%shape_msgs/SolidPrimitive shape~%~%# Only used if type==MESH_BODY, otherwise ignored. ~%# Needs to be a ROS resource description, like:~%# 'package://my_pkg/meshes/some_mesh.dae'~%string mesh~%~%# Only used if type==URDF_BODY, otherwise ignored.~%# Needs to comply with the URDF definition from here:~%# http://wiki.ros.org/urdf/XML~%string urdf~%# Only used if type==URDF_BODY, otherwise ignored.~%# Optional, can be left empty.~%# If not empty, this will interpreted as a ROS topic over which ~%# message of type sensor_msgs/JointState are communicated that~%# contain the current state of all the movable joints described~%# in the urdf.~%string joint_state_topic~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorldBody)))
  "Returns full string definition for message of type 'WorldBody"
  (cl:format cl:nil "# Representation of a single body into the world ~%~%# Possible constants to fill into the type field~%uint8 UNDEFINED=0~%uint8 PRIMITIVE_BODY=1~%uint8 MESH_BODY=2~%uint8 URDF_BODY=3~%~%# The type of body that is represented~%uint8 type~%~%# The name with which the body shall be addressed in the world~%# Note: needs to be unique. If the name is already taken, an error will be returned~%string name~%~%# Only used if type==PRIMITIVE_BODY, otherwise ignored.~%shape_msgs/SolidPrimitive shape~%~%# Only used if type==MESH_BODY, otherwise ignored. ~%# Needs to be a ROS resource description, like:~%# 'package://my_pkg/meshes/some_mesh.dae'~%string mesh~%~%# Only used if type==URDF_BODY, otherwise ignored.~%# Needs to comply with the URDF definition from here:~%# http://wiki.ros.org/urdf/XML~%string urdf~%# Only used if type==URDF_BODY, otherwise ignored.~%# Optional, can be left empty.~%# If not empty, this will interpreted as a ROS topic over which ~%# message of type sensor_msgs/JointState are communicated that~%# contain the current state of all the movable joints described~%# in the urdf.~%string joint_state_topic~%~%================================================================================~%MSG: shape_msgs/SolidPrimitive~%# Define box, sphere, cylinder, cone ~%# All shapes are defined to have their bounding boxes centered around 0,0,0.~%~%uint8 BOX=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 CONE=4~%~%# The type of the shape~%uint8 type~%~%~%# The dimensions of the shape~%float64[] dimensions~%~%# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array~%~%# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding~%# sides of the box.~%uint8 BOX_X=0~%uint8 BOX_Y=1~%uint8 BOX_Z=2~%~%~%# For the SPHERE type, only one component is used, and it gives the radius of~%# the sphere.~%uint8 SPHERE_RADIUS=0~%~%~%# For the CYLINDER and CONE types, the center line is oriented along~%# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component~%# of dimensions gives the height of the cylinder (cone).  The~%# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the~%# radius of the base of the cylinder (cone).  Cone and cylinder~%# primitives are defined to be circular. The tip of the cone is~%# pointing up, along +Z axis.~%~%uint8 CYLINDER_HEIGHT=0~%uint8 CYLINDER_RADIUS=1~%~%uint8 CONE_HEIGHT=0~%uint8 CONE_RADIUS=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorldBody>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape))
     4 (cl:length (cl:slot-value msg 'mesh))
     4 (cl:length (cl:slot-value msg 'urdf))
     4 (cl:length (cl:slot-value msg 'joint_state_topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorldBody>))
  "Converts a ROS message object to a list"
  (cl:list 'WorldBody
    (cl:cons ':type (type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':mesh (mesh msg))
    (cl:cons ':urdf (urdf msg))
    (cl:cons ':joint_state_topic (joint_state_topic msg))
))
