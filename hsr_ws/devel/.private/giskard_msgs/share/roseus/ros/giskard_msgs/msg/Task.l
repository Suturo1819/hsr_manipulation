;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::Task)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'Task (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::TASK")
  (make-package "GISKARD_MSGS::TASK"))

(in-package "ROS")
;;//! \htmlinclude Task.msg.html


(defclass giskard_msgs::Task
  :super ros::object
  :slots (_type _objects _pour_volume ))

(defmethod giskard_msgs::Task
  (:init
   (&key
    ((:type __type) "")
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance giskard_msgs::TaskObject :init) r)) r))
    ((:pour_volume __pour_volume) 0.0)
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _objects __objects)
   (setq _pour_volume (float __pour_volume))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:pour_volume
   (&optional __pour_volume)
   (if __pour_volume (setq _pour_volume __pour_volume)) _pour_volume)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; giskard_msgs/TaskObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ;; float64 _pour_volume
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; giskard_msgs/TaskObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;; float64 _pour_volume
       (sys::poke _pour_volume (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; giskard_msgs/TaskObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance giskard_msgs::TaskObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _pour_volume
     (setq _pour_volume (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get giskard_msgs::Task :md5sum-) "6e32762b7c3b4d6c977fae7bf0e0a0db")
(setf (get giskard_msgs::Task :datatype-) "giskard_msgs/Task")
(setf (get giskard_msgs::Task :definition-)
      "# identifier of the task type
string type

# objects involved in the action
giskard_msgs/TaskObject[] objects

# for pouring tasks
float64 pour_volume # in cubic-meters

================================================================================
MSG: giskard_msgs/TaskObject
# A representation of an object which is part of an action.
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



(provide :giskard_msgs/Task "6e32762b7c3b4d6c977fae7bf0e0a0db")


