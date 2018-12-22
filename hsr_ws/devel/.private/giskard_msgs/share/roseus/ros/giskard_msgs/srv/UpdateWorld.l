;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::UpdateWorld)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'UpdateWorld (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::UPDATEWORLD")
  (make-package "GISKARD_MSGS::UPDATEWORLD"))
(unless (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST")
  (make-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(unless (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE")
  (make-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*UNDEFINED*" (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(shadow '*UNDEFINED* (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(defconstant giskard_msgs::UpdateWorldRequest::*UNDEFINED* 0)
(intern "*ADD*" (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(shadow '*ADD* (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(defconstant giskard_msgs::UpdateWorldRequest::*ADD* 1)
(intern "*REMOVE*" (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(shadow '*REMOVE* (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(defconstant giskard_msgs::UpdateWorldRequest::*REMOVE* 2)
(intern "*ALTER*" (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(shadow '*ALTER* (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(defconstant giskard_msgs::UpdateWorldRequest::*ALTER* 3)
(intern "*REMOVE_ALL*" (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(shadow '*REMOVE_ALL* (find-package "GISKARD_MSGS::UPDATEWORLDREQUEST"))
(defconstant giskard_msgs::UpdateWorldRequest::*REMOVE_ALL* 4)
(defclass giskard_msgs::UpdateWorldRequest
  :super ros::object
  :slots (_operation _body _rigidly_attached _pose ))

(defmethod giskard_msgs::UpdateWorldRequest
  (:init
   (&key
    ((:operation __operation) 0)
    ((:body __body) (instance giskard_msgs::WorldBody :init))
    ((:rigidly_attached __rigidly_attached) nil)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _operation (round __operation))
   (setq _body __body)
   (setq _rigidly_attached __rigidly_attached)
   (setq _pose __pose)
   self)
  (:operation
   (&optional __operation)
   (if __operation (setq _operation __operation)) _operation)
  (:body
   (&rest __body)
   (if (keywordp (car __body))
       (send* _body __body)
     (progn
       (if __body (setq _body (car __body)))
       _body)))
  (:rigidly_attached
   (&optional __rigidly_attached)
   (if __rigidly_attached (setq _rigidly_attached __rigidly_attached)) _rigidly_attached)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; uint8 _operation
    1
    ;; giskard_msgs/WorldBody _body
    (send _body :serialization-length)
    ;; bool _rigidly_attached
    1
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _operation
       (write-byte _operation s)
     ;; giskard_msgs/WorldBody _body
       (send _body :serialize s)
     ;; bool _rigidly_attached
       (if _rigidly_attached (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _operation
     (setq _operation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; giskard_msgs/WorldBody _body
     (send _body :deserialize buf ptr-) (incf ptr- (send _body :serialization-length))
   ;; bool _rigidly_attached
     (setq _rigidly_attached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(intern "*SUCCESS*" (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(shadow '*SUCCESS* (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(defconstant giskard_msgs::UpdateWorldResponse::*SUCCESS* 0)
(intern "*MISSING_BODY_ERROR*" (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(shadow '*MISSING_BODY_ERROR* (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(defconstant giskard_msgs::UpdateWorldResponse::*MISSING_BODY_ERROR* 1)
(intern "*DUPLICATE_BODY_ERROR*" (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(shadow '*DUPLICATE_BODY_ERROR* (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(defconstant giskard_msgs::UpdateWorldResponse::*DUPLICATE_BODY_ERROR* 2)
(intern "*CORRUPT_SHAPE_ERROR*" (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(shadow '*CORRUPT_SHAPE_ERROR* (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(defconstant giskard_msgs::UpdateWorldResponse::*CORRUPT_SHAPE_ERROR* 3)
(intern "*CORRUPT_MESH_ERROR*" (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(shadow '*CORRUPT_MESH_ERROR* (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(defconstant giskard_msgs::UpdateWorldResponse::*CORRUPT_MESH_ERROR* 4)
(intern "*CORRUPT_URDF_ERROR*" (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(shadow '*CORRUPT_URDF_ERROR* (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(defconstant giskard_msgs::UpdateWorldResponse::*CORRUPT_URDF_ERROR* 5)
(intern "*TF_ERROR*" (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(shadow '*TF_ERROR* (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(defconstant giskard_msgs::UpdateWorldResponse::*TF_ERROR* 6)
(intern "*MISSING_LINK_ERROR*" (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(shadow '*MISSING_LINK_ERROR* (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(defconstant giskard_msgs::UpdateWorldResponse::*MISSING_LINK_ERROR* 7)
(intern "*INVALID_OPERATION*" (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(shadow '*INVALID_OPERATION* (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(defconstant giskard_msgs::UpdateWorldResponse::*INVALID_OPERATION* 8)
(intern "*UNSUPPORTED_OPTIONS*" (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(shadow '*UNSUPPORTED_OPTIONS* (find-package "GISKARD_MSGS::UPDATEWORLDRESPONSE"))
(defconstant giskard_msgs::UpdateWorldResponse::*UNSUPPORTED_OPTIONS* 9)
(defclass giskard_msgs::UpdateWorldResponse
  :super ros::object
  :slots (_error_codes _error_msg ))

(defmethod giskard_msgs::UpdateWorldResponse
  (:init
   (&key
    ((:error_codes __error_codes) 0)
    ((:error_msg __error_msg) "")
    )
   (send-super :init)
   (setq _error_codes (round __error_codes))
   (setq _error_msg (string __error_msg))
   self)
  (:error_codes
   (&optional __error_codes)
   (if __error_codes (setq _error_codes __error_codes)) _error_codes)
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:serialization-length
   ()
   (+
    ;; uint8 _error_codes
    1
    ;; string _error_msg
    4 (length _error_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _error_codes
       (write-byte _error_codes s)
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _error_codes
     (setq _error_codes (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass giskard_msgs::UpdateWorld
  :super ros::object
  :slots ())

(setf (get giskard_msgs::UpdateWorld :md5sum-) "9af3706c2feee114c99767eb9c5ebb7f")
(setf (get giskard_msgs::UpdateWorld :datatype-) "giskard_msgs/UpdateWorld")
(setf (get giskard_msgs::UpdateWorld :request) giskard_msgs::UpdateWorldRequest)
(setf (get giskard_msgs::UpdateWorld :response) giskard_msgs::UpdateWorldResponse)

(defmethod giskard_msgs::UpdateWorldRequest
  (:response () (instance giskard_msgs::UpdateWorldResponse :init)))

(setf (get giskard_msgs::UpdateWorldRequest :md5sum-) "9af3706c2feee114c99767eb9c5ebb7f")
(setf (get giskard_msgs::UpdateWorldRequest :datatype-) "giskard_msgs/UpdateWorldRequest")
(setf (get giskard_msgs::UpdateWorldRequest :definition-)
      "


uint8 UNDEFINED=0



uint8 ADD=1



uint8 REMOVE=2



uint8 ALTER=3



uint8 REMOVE_ALL=4


uint8 operation


giskard_msgs/WorldBody body



bool rigidly_attached




geometry_msgs/PoseStamped pose

================================================================================
MSG: giskard_msgs/WorldBody
# Representation of a single body into the world 

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

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---



uint8 SUCCESS=0
uint8 MISSING_BODY_ERROR=1
uint8 DUPLICATE_BODY_ERROR=2
uint8 CORRUPT_SHAPE_ERROR=3
uint8 CORRUPT_MESH_ERROR=4
uint8 CORRUPT_URDF_ERROR=5
uint8 TF_ERROR=6
uint8 MISSING_LINK_ERROR=7
uint8 INVALID_OPERATION=8
uint8 UNSUPPORTED_OPTIONS=9


uint8 error_codes


string error_msg

")

(setf (get giskard_msgs::UpdateWorldResponse :md5sum-) "9af3706c2feee114c99767eb9c5ebb7f")
(setf (get giskard_msgs::UpdateWorldResponse :datatype-) "giskard_msgs/UpdateWorldResponse")
(setf (get giskard_msgs::UpdateWorldResponse :definition-)
      "


uint8 UNDEFINED=0



uint8 ADD=1



uint8 REMOVE=2



uint8 ALTER=3



uint8 REMOVE_ALL=4


uint8 operation


giskard_msgs/WorldBody body



bool rigidly_attached




geometry_msgs/PoseStamped pose

================================================================================
MSG: giskard_msgs/WorldBody
# Representation of a single body into the world 

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

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---



uint8 SUCCESS=0
uint8 MISSING_BODY_ERROR=1
uint8 DUPLICATE_BODY_ERROR=2
uint8 CORRUPT_SHAPE_ERROR=3
uint8 CORRUPT_MESH_ERROR=4
uint8 CORRUPT_URDF_ERROR=5
uint8 TF_ERROR=6
uint8 MISSING_LINK_ERROR=7
uint8 INVALID_OPERATION=8
uint8 UNSUPPORTED_OPTIONS=9


uint8 error_codes


string error_msg

")



(provide :giskard_msgs/UpdateWorld "9af3706c2feee114c99767eb9c5ebb7f")


