;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::WorldBody)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'WorldBody (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::WORLDBODY")
  (make-package "GISKARD_MSGS::WORLDBODY"))

(in-package "ROS")
;;//! \htmlinclude WorldBody.msg.html
(if (not (find-package "SHAPE_MSGS"))
  (ros::roseus-add-msgs "shape_msgs"))


(intern "*UNDEFINED*" (find-package "GISKARD_MSGS::WORLDBODY"))
(shadow '*UNDEFINED* (find-package "GISKARD_MSGS::WORLDBODY"))
(defconstant giskard_msgs::WorldBody::*UNDEFINED* 0)
(intern "*PRIMITIVE_BODY*" (find-package "GISKARD_MSGS::WORLDBODY"))
(shadow '*PRIMITIVE_BODY* (find-package "GISKARD_MSGS::WORLDBODY"))
(defconstant giskard_msgs::WorldBody::*PRIMITIVE_BODY* 1)
(intern "*MESH_BODY*" (find-package "GISKARD_MSGS::WORLDBODY"))
(shadow '*MESH_BODY* (find-package "GISKARD_MSGS::WORLDBODY"))
(defconstant giskard_msgs::WorldBody::*MESH_BODY* 2)
(intern "*URDF_BODY*" (find-package "GISKARD_MSGS::WORLDBODY"))
(shadow '*URDF_BODY* (find-package "GISKARD_MSGS::WORLDBODY"))
(defconstant giskard_msgs::WorldBody::*URDF_BODY* 3)
(defclass giskard_msgs::WorldBody
  :super ros::object
  :slots (_type _name _shape _mesh _urdf _joint_state_topic ))

(defmethod giskard_msgs::WorldBody
  (:init
   (&key
    ((:type __type) 0)
    ((:name __name) "")
    ((:shape __shape) (instance shape_msgs::SolidPrimitive :init))
    ((:mesh __mesh) "")
    ((:urdf __urdf) "")
    ((:joint_state_topic __joint_state_topic) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _name (string __name))
   (setq _shape __shape)
   (setq _mesh (string __mesh))
   (setq _urdf (string __urdf))
   (setq _joint_state_topic (string __joint_state_topic))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:mesh
   (&optional __mesh)
   (if __mesh (setq _mesh __mesh)) _mesh)
  (:urdf
   (&optional __urdf)
   (if __urdf (setq _urdf __urdf)) _urdf)
  (:joint_state_topic
   (&optional __joint_state_topic)
   (if __joint_state_topic (setq _joint_state_topic __joint_state_topic)) _joint_state_topic)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; string _name
    4 (length _name)
    ;; shape_msgs/SolidPrimitive _shape
    (send _shape :serialization-length)
    ;; string _mesh
    4 (length _mesh)
    ;; string _urdf
    4 (length _urdf)
    ;; string _joint_state_topic
    4 (length _joint_state_topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; shape_msgs/SolidPrimitive _shape
       (send _shape :serialize s)
     ;; string _mesh
       (write-long (length _mesh) s) (princ _mesh s)
     ;; string _urdf
       (write-long (length _urdf) s) (princ _urdf s)
     ;; string _joint_state_topic
       (write-long (length _joint_state_topic) s) (princ _joint_state_topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; shape_msgs/SolidPrimitive _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; string _mesh
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mesh (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _urdf
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _urdf (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _joint_state_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_state_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get giskard_msgs::WorldBody :md5sum-) "f763aeaaddb71192fb2371cfede6d783")
(setf (get giskard_msgs::WorldBody :datatype-) "giskard_msgs/WorldBody")
(setf (get giskard_msgs::WorldBody :definition-)
      "# Representation of a single body into the world 

# Possible constants to fill into the type field
uint8 UNDEFINED=0
uint8 PRIMITIVE_BODY=1
uint8 MESH_BODY=2
uint8 URDF_BODY=3

# The type of body that is represented
uint8 type

# The name with which the body shall be addressed in the world
# Note: needs to be unique. If the name is already taken, an error will be returned
string name

# Only used if type==PRIMITIVE_BODY, otherwise ignored.
shape_msgs/SolidPrimitive shape

# Only used if type==MESH_BODY, otherwise ignored. 
# Needs to be a ROS resource description, like:
# 'package://my_pkg/meshes/some_mesh.dae'
string mesh

# Only used if type==URDF_BODY, otherwise ignored.
# Needs to comply with the URDF definition from here:
# http://wiki.ros.org/urdf/XML
string urdf
# Only used if type==URDF_BODY, otherwise ignored.
# Optional, can be left empty.
# If not empty, this will interpreted as a ROS topic over which 
# message of type sensor_msgs/JointState are communicated that
# contain the current state of all the movable joints described
# in the urdf.
string joint_state_topic

================================================================================
MSG: shape_msgs/SolidPrimitive
# Define box, sphere, cylinder, cone 
# All shapes are defined to have their bounding boxes centered around 0,0,0.

uint8 BOX=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 CONE=4

# The type of the shape
uint8 type


# The dimensions of the shape
float64[] dimensions

# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array

# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
# sides of the box.
uint8 BOX_X=0
uint8 BOX_Y=1
uint8 BOX_Z=2


# For the SPHERE type, only one component is used, and it gives the radius of
# the sphere.
uint8 SPHERE_RADIUS=0


# For the CYLINDER and CONE types, the center line is oriented along
# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
# of dimensions gives the height of the cylinder (cone).  The
# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
# radius of the base of the cylinder (cone).  Cone and cylinder
# primitives are defined to be circular. The tip of the cone is
# pointing up, along +Z axis.

uint8 CYLINDER_HEIGHT=0
uint8 CYLINDER_RADIUS=1

uint8 CONE_HEIGHT=0
uint8 CONE_RADIUS=1

")



(provide :giskard_msgs/WorldBody "f763aeaaddb71192fb2371cfede6d783")


