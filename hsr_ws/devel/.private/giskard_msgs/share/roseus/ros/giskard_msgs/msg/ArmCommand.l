;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::ArmCommand)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'ArmCommand (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::ARMCOMMAND")
  (make-package "GISKARD_MSGS::ARMCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ArmCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*IGNORE_GOAL*" (find-package "GISKARD_MSGS::ARMCOMMAND"))
(shadow '*IGNORE_GOAL* (find-package "GISKARD_MSGS::ARMCOMMAND"))
(defconstant giskard_msgs::ArmCommand::*IGNORE_GOAL* 0)
(intern "*CARTESIAN_GOAL*" (find-package "GISKARD_MSGS::ARMCOMMAND"))
(shadow '*CARTESIAN_GOAL* (find-package "GISKARD_MSGS::ARMCOMMAND"))
(defconstant giskard_msgs::ArmCommand::*CARTESIAN_GOAL* 1)
(intern "*JOINT_GOAL*" (find-package "GISKARD_MSGS::ARMCOMMAND"))
(shadow '*JOINT_GOAL* (find-package "GISKARD_MSGS::ARMCOMMAND"))
(defconstant giskard_msgs::ArmCommand::*JOINT_GOAL* 2)
(defclass giskard_msgs::ArmCommand
  :super ros::object
  :slots (_type _goal_pose _goal_configuration _convergence_thresholds ))

(defmethod giskard_msgs::ArmCommand
  (:init
   (&key
    ((:type __type) 0)
    ((:goal_pose __goal_pose) (instance geometry_msgs::PoseStamped :init))
    ((:goal_configuration __goal_configuration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:convergence_thresholds __convergence_thresholds) (let (r) (dotimes (i 0) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _goal_pose __goal_pose)
   (setq _goal_configuration __goal_configuration)
   (setq _convergence_thresholds __convergence_thresholds)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:goal_pose
   (&rest __goal_pose)
   (if (keywordp (car __goal_pose))
       (send* _goal_pose __goal_pose)
     (progn
       (if __goal_pose (setq _goal_pose (car __goal_pose)))
       _goal_pose)))
  (:goal_configuration
   (&optional __goal_configuration)
   (if __goal_configuration (setq _goal_configuration __goal_configuration)) _goal_configuration)
  (:convergence_thresholds
   (&rest __convergence_thresholds)
   (if (keywordp (car __convergence_thresholds))
       (send* _convergence_thresholds __convergence_thresholds)
     (progn
       (if __convergence_thresholds (setq _convergence_thresholds (car __convergence_thresholds)))
       _convergence_thresholds)))
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; geometry_msgs/PoseStamped _goal_pose
    (send _goal_pose :serialization-length)
    ;; float64[] _goal_configuration
    (* 8    (length _goal_configuration)) 4
    ;; giskard_msgs/SemanticFloat64[] _convergence_thresholds
    (apply #'+ (send-all _convergence_thresholds :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; geometry_msgs/PoseStamped _goal_pose
       (send _goal_pose :serialize s)
     ;; float64[] _goal_configuration
     (write-long (length _goal_configuration) s)
     (dotimes (i (length _goal_configuration))
       (sys::poke (elt _goal_configuration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; giskard_msgs/SemanticFloat64[] _convergence_thresholds
     (write-long (length _convergence_thresholds) s)
     (dolist (elem _convergence_thresholds)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _goal_pose
     (send _goal_pose :deserialize buf ptr-) (incf ptr- (send _goal_pose :serialization-length))
   ;; float64[] _goal_configuration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_configuration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_configuration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; giskard_msgs/SemanticFloat64[] _convergence_thresholds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _convergence_thresholds (let (r) (dotimes (i n) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
     (dolist (elem- _convergence_thresholds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get giskard_msgs::ArmCommand :md5sum-) "41a9ac8c4e1e8072ebaff33076861080")
(setf (get giskard_msgs::ArmCommand :datatype-) "giskard_msgs/ArmCommand")
(setf (get giskard_msgs::ArmCommand :definition-)
      "# A command message for robotic manipulators that exposes a couple
# of alternative ways of specifying commands.

# Definitions of possible values used for type
uint8 IGNORE_GOAL=0 # Ignore the rest of this command.
uint8 CARTESIAN_GOAL=1 # Use the PoseStamped.
uint8 JOINT_GOAL=2 # Use the list of floats.

# use one of the above constants to indicate the type of command
uint8 type

# Cartesian goal for the arm.
# Note: The header will be used to resolve goal using tf.
geometry_msgs/PoseStamped goal_pose

# Joint goal for the arm.
float64[] goal_configuration

# List of internal double expressions with thresholds to decide convergence
giskard_msgs/SemanticFloat64[] convergence_thresholds

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

================================================================================
MSG: giskard_msgs/SemanticFloat64
# A floating-point with semantics hint attached.
# Note: I know this is not much but better than just the number. ;)

# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
string semantics
# The actual value communicated.
float64 value

")



(provide :giskard_msgs/ArmCommand "41a9ac8c4e1e8072ebaff33076861080")


