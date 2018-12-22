;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::QueryMotion)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'QueryMotion (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::QUERYMOTION")
  (make-package "GISKARD_MSGS::QUERYMOTION"))
(unless (find-package "GISKARD_MSGS::QUERYMOTIONREQUEST")
  (make-package "GISKARD_MSGS::QUERYMOTIONREQUEST"))
(unless (find-package "GISKARD_MSGS::QUERYMOTIONRESPONSE")
  (make-package "GISKARD_MSGS::QUERYMOTIONRESPONSE"))

(in-package "ROS")





(defclass giskard_msgs::QueryMotionRequest
  :super ros::object
  :slots (_task ))

(defmethod giskard_msgs::QueryMotionRequest
  (:init
   (&key
    ((:task __task) (instance giskard_msgs::Task :init))
    )
   (send-super :init)
   (setq _task __task)
   self)
  (:task
   (&rest __task)
   (if (keywordp (car __task))
       (send* _task __task)
     (progn
       (if __task (setq _task (car __task)))
       _task)))
  (:serialization-length
   ()
   (+
    ;; giskard_msgs/Task _task
    (send _task :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; giskard_msgs/Task _task
       (send _task :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; giskard_msgs/Task _task
     (send _task :deserialize buf ptr-) (incf ptr- (send _task :serialization-length))
   ;;
   self)
  )

(defclass giskard_msgs::QueryMotionResponse
  :super ros::object
  :slots (_phases ))

(defmethod giskard_msgs::QueryMotionResponse
  (:init
   (&key
    ((:phases __phases) (let (r) (dotimes (i 0) (push (instance giskard_msgs::MotionPhase :init) r)) r))
    )
   (send-super :init)
   (setq _phases __phases)
   self)
  (:phases
   (&rest __phases)
   (if (keywordp (car __phases))
       (send* _phases __phases)
     (progn
       (if __phases (setq _phases (car __phases)))
       _phases)))
  (:serialization-length
   ()
   (+
    ;; giskard_msgs/MotionPhase[] _phases
    (apply #'+ (send-all _phases :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; giskard_msgs/MotionPhase[] _phases
     (write-long (length _phases) s)
     (dolist (elem _phases)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; giskard_msgs/MotionPhase[] _phases
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _phases (let (r) (dotimes (i n) (push (instance giskard_msgs::MotionPhase :init) r)) r))
     (dolist (elem- _phases)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass giskard_msgs::QueryMotion
  :super ros::object
  :slots ())

(setf (get giskard_msgs::QueryMotion :md5sum-) "bb38ae62c664e4cfff9e4ebb97163477")
(setf (get giskard_msgs::QueryMotion :datatype-) "giskard_msgs/QueryMotion")
(setf (get giskard_msgs::QueryMotion :request) giskard_msgs::QueryMotionRequest)
(setf (get giskard_msgs::QueryMotion :response) giskard_msgs::QueryMotionResponse)

(defmethod giskard_msgs::QueryMotionRequest
  (:response () (instance giskard_msgs::QueryMotionResponse :init)))

(setf (get giskard_msgs::QueryMotionRequest :md5sum-) "bb38ae62c664e4cfff9e4ebb97163477")
(setf (get giskard_msgs::QueryMotionRequest :datatype-) "giskard_msgs/QueryMotionRequest")
(setf (get giskard_msgs::QueryMotionRequest :definition-)
      "
giskard_msgs/Task task

================================================================================
MSG: giskard_msgs/Task
# identifier of the task type
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
---

giskard_msgs/MotionPhase[] phases


================================================================================
MSG: giskard_msgs/MotionPhase
# definition of a task-specific motion phase

# identifier of the motion phase
string name

# a list of constraints representing the motion goal
giskard_msgs/Constraint[] constraints

================================================================================
MSG: giskard_msgs/Constraint
# a string identifying the expression behind the constraint
string name

# desired lower and upper boundaries that shall be enforced
float64 lower
float64 upper
")

(setf (get giskard_msgs::QueryMotionResponse :md5sum-) "bb38ae62c664e4cfff9e4ebb97163477")
(setf (get giskard_msgs::QueryMotionResponse :datatype-) "giskard_msgs/QueryMotionResponse")
(setf (get giskard_msgs::QueryMotionResponse :definition-)
      "
giskard_msgs/Task task

================================================================================
MSG: giskard_msgs/Task
# identifier of the task type
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
---

giskard_msgs/MotionPhase[] phases


================================================================================
MSG: giskard_msgs/MotionPhase
# definition of a task-specific motion phase

# identifier of the motion phase
string name

# a list of constraints representing the motion goal
giskard_msgs/Constraint[] constraints

================================================================================
MSG: giskard_msgs/Constraint
# a string identifying the expression behind the constraint
string name

# desired lower and upper boundaries that shall be enforced
float64 lower
float64 upper
")



(provide :giskard_msgs/QueryMotion "bb38ae62c664e4cfff9e4ebb97163477")


