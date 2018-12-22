;; Auto-generated. Do not edit!


(when (boundp 'iai_naive_kinematics_sim::SetJointState)
  (if (not (find-package "IAI_NAIVE_KINEMATICS_SIM"))
    (make-package "IAI_NAIVE_KINEMATICS_SIM"))
  (shadow 'SetJointState (find-package "IAI_NAIVE_KINEMATICS_SIM")))
(unless (find-package "IAI_NAIVE_KINEMATICS_SIM::SETJOINTSTATE")
  (make-package "IAI_NAIVE_KINEMATICS_SIM::SETJOINTSTATE"))
(unless (find-package "IAI_NAIVE_KINEMATICS_SIM::SETJOINTSTATEREQUEST")
  (make-package "IAI_NAIVE_KINEMATICS_SIM::SETJOINTSTATEREQUEST"))
(unless (find-package "IAI_NAIVE_KINEMATICS_SIM::SETJOINTSTATERESPONSE")
  (make-package "IAI_NAIVE_KINEMATICS_SIM::SETJOINTSTATERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass iai_naive_kinematics_sim::SetJointStateRequest
  :super ros::object
  :slots (_state ))

(defmethod iai_naive_kinematics_sim::SetJointStateRequest
  (:init
   (&key
    ((:state __state) (instance sensor_msgs::JointState :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass iai_naive_kinematics_sim::SetJointStateResponse
  :super ros::object
  :slots (_success _message ))

(defmethod iai_naive_kinematics_sim::SetJointStateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass iai_naive_kinematics_sim::SetJointState
  :super ros::object
  :slots ())

(setf (get iai_naive_kinematics_sim::SetJointState :md5sum-) "aa4ba8fc35255d7bdcb6580da3f69cf9")
(setf (get iai_naive_kinematics_sim::SetJointState :datatype-) "iai_naive_kinematics_sim/SetJointState")
(setf (get iai_naive_kinematics_sim::SetJointState :request) iai_naive_kinematics_sim::SetJointStateRequest)
(setf (get iai_naive_kinematics_sim::SetJointState :response) iai_naive_kinematics_sim::SetJointStateResponse)

(defmethod iai_naive_kinematics_sim::SetJointStateRequest
  (:response () (instance iai_naive_kinematics_sim::SetJointStateResponse :init)))

(setf (get iai_naive_kinematics_sim::SetJointStateRequest :md5sum-) "aa4ba8fc35255d7bdcb6580da3f69cf9")
(setf (get iai_naive_kinematics_sim::SetJointStateRequest :datatype-) "iai_naive_kinematics_sim/SetJointStateRequest")
(setf (get iai_naive_kinematics_sim::SetJointStateRequest :definition-)
      "sensor_msgs/JointState state

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
---
bool success
string message

")

(setf (get iai_naive_kinematics_sim::SetJointStateResponse :md5sum-) "aa4ba8fc35255d7bdcb6580da3f69cf9")
(setf (get iai_naive_kinematics_sim::SetJointStateResponse :datatype-) "iai_naive_kinematics_sim/SetJointStateResponse")
(setf (get iai_naive_kinematics_sim::SetJointStateResponse :definition-)
      "sensor_msgs/JointState state

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
---
bool success
string message

")



(provide :iai_naive_kinematics_sim/SetJointState "aa4ba8fc35255d7bdcb6580da3f69cf9")


