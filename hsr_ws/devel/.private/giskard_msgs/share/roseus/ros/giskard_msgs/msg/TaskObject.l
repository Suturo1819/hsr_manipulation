;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::TaskObject)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'TaskObject (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::TASKOBJECT")
  (make-package "GISKARD_MSGS::TASKOBJECT"))

(in-package "ROS")
;;//! \htmlinclude TaskObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*INVALID_ROLE*" (find-package "GISKARD_MSGS::TASKOBJECT"))
(shadow '*INVALID_ROLE* (find-package "GISKARD_MSGS::TASKOBJECT"))
(defconstant giskard_msgs::TaskObject::*INVALID_ROLE* 0)
(intern "*SOURCE_ROLE*" (find-package "GISKARD_MSGS::TASKOBJECT"))
(shadow '*SOURCE_ROLE* (find-package "GISKARD_MSGS::TASKOBJECT"))
(defconstant giskard_msgs::TaskObject::*SOURCE_ROLE* 1)
(intern "*TARGET_ROLE*" (find-package "GISKARD_MSGS::TASKOBJECT"))
(shadow '*TARGET_ROLE* (find-package "GISKARD_MSGS::TASKOBJECT"))
(defconstant giskard_msgs::TaskObject::*TARGET_ROLE* 2)
(defclass giskard_msgs::TaskObject
  :super ros::object
  :slots (_name _pose _role _liquid_volume ))

(defmethod giskard_msgs::TaskObject
  (:init
   (&key
    ((:name __name) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:role __role) 0)
    ((:liquid_volume __liquid_volume) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _pose __pose)
   (setq _role (round __role))
   (setq _liquid_volume (float __liquid_volume))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:role
   (&optional __role)
   (if __role (setq _role __role)) _role)
  (:liquid_volume
   (&optional __liquid_volume)
   (if __liquid_volume (setq _liquid_volume __liquid_volume)) _liquid_volume)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; uint8 _role
    1
    ;; float64 _liquid_volume
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; uint8 _role
       (write-byte _role s)
     ;; float64 _liquid_volume
       (sys::poke _liquid_volume (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint8 _role
     (setq _role (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _liquid_volume
     (setq _liquid_volume (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get giskard_msgs::TaskObject :md5sum-) "1ba4d8b9cd8d97703bb62b4d8fc1956c")
(setf (get giskard_msgs::TaskObject :datatype-) "giskard_msgs/TaskObject")
(setf (get giskard_msgs::TaskObject :definition-)
      "# A representation of an object which is part of an action.
# Used for querying task-specific constraints for giskard controllers.

# definitions of possible values for field 'role'
uint8 INVALID_ROLE=0 # make sure users set a proper role
uint8 SOURCE_ROLE=1 # object acts as the source of the action
uint8 TARGET_ROLE=2 # object acts as the target of the action

# unique identifier of the object
string name

# perceived pose of the object
geometry_msgs/PoseStamped pose

# role the object will play within a task
uint8 role

# in case the object is filled with a liquid
float64 liquid_volume # in cubic-meters

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

")



(provide :giskard_msgs/TaskObject "1ba4d8b9cd8d97703bb62b4d8fc1956c")


