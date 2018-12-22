;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::WholeBodyCommand)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'WholeBodyCommand (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::WHOLEBODYCOMMAND")
  (make-package "GISKARD_MSGS::WHOLEBODYCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude WholeBodyCommand.msg.html


(intern "*STANDARD_CONTROLLER*" (find-package "GISKARD_MSGS::WHOLEBODYCOMMAND"))
(shadow '*STANDARD_CONTROLLER* (find-package "GISKARD_MSGS::WHOLEBODYCOMMAND"))
(defconstant giskard_msgs::WholeBodyCommand::*STANDARD_CONTROLLER* 0)
(intern "*YAML_CONTROLLER*" (find-package "GISKARD_MSGS::WHOLEBODYCOMMAND"))
(shadow '*YAML_CONTROLLER* (find-package "GISKARD_MSGS::WHOLEBODYCOMMAND"))
(defconstant giskard_msgs::WholeBodyCommand::*YAML_CONTROLLER* 1)
(defclass giskard_msgs::WholeBodyCommand
  :super ros::object
  :slots (_type _right_ee _left_ee _yaml_spec _convergence_thresholds ))

(defmethod giskard_msgs::WholeBodyCommand
  (:init
   (&key
    ((:type __type) 0)
    ((:right_ee __right_ee) (instance giskard_msgs::ArmCommand :init))
    ((:left_ee __left_ee) (instance giskard_msgs::ArmCommand :init))
    ((:yaml_spec __yaml_spec) "")
    ((:convergence_thresholds __convergence_thresholds) (let (r) (dotimes (i 0) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _right_ee __right_ee)
   (setq _left_ee __left_ee)
   (setq _yaml_spec (string __yaml_spec))
   (setq _convergence_thresholds __convergence_thresholds)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:right_ee
   (&rest __right_ee)
   (if (keywordp (car __right_ee))
       (send* _right_ee __right_ee)
     (progn
       (if __right_ee (setq _right_ee (car __right_ee)))
       _right_ee)))
  (:left_ee
   (&rest __left_ee)
   (if (keywordp (car __left_ee))
       (send* _left_ee __left_ee)
     (progn
       (if __left_ee (setq _left_ee (car __left_ee)))
       _left_ee)))
  (:yaml_spec
   (&optional __yaml_spec)
   (if __yaml_spec (setq _yaml_spec __yaml_spec)) _yaml_spec)
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
    ;; giskard_msgs/ArmCommand _right_ee
    (send _right_ee :serialization-length)
    ;; giskard_msgs/ArmCommand _left_ee
    (send _left_ee :serialization-length)
    ;; string _yaml_spec
    4 (length _yaml_spec)
    ;; giskard_msgs/SemanticFloat64[] _convergence_thresholds
    (apply #'+ (send-all _convergence_thresholds :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; giskard_msgs/ArmCommand _right_ee
       (send _right_ee :serialize s)
     ;; giskard_msgs/ArmCommand _left_ee
       (send _left_ee :serialize s)
     ;; string _yaml_spec
       (write-long (length _yaml_spec) s) (princ _yaml_spec s)
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
   ;; giskard_msgs/ArmCommand _right_ee
     (send _right_ee :deserialize buf ptr-) (incf ptr- (send _right_ee :serialization-length))
   ;; giskard_msgs/ArmCommand _left_ee
     (send _left_ee :deserialize buf ptr-) (incf ptr- (send _left_ee :serialization-length))
   ;; string _yaml_spec
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _yaml_spec (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get giskard_msgs::WholeBodyCommand :md5sum-) "097f13fb94c4a201b4330a8facff3abe")
(setf (get giskard_msgs::WholeBodyCommand :datatype-) "giskard_msgs/WholeBodyCommand")
(setf (get giskard_msgs::WholeBodyCommand :definition-)
      "# A whole-body command message for a mobile manipulator with a morphology 
# compatible with the PR2 robot. The message was designed to support alternative
# ways of specifying a command.

# definitions of possible values to use as type
uint8 STANDARD_CONTROLLER=0
uint8 YAML_CONTROLLER=1

# use of the above constants to indicate the type of command
uint8 type

# standard controllers
giskard_msgs/ArmCommand right_ee # command for right arm
giskard_msgs/ArmCommand left_ee # command for left arm

# yaml controllers
string yaml_spec # complete specification of controller
giskard_msgs/SemanticFloat64[] convergence_thresholds # thresholds used to decide convergence of motion

================================================================================
MSG: giskard_msgs/ArmCommand
# A command message for robotic manipulators that exposes a couple
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



(provide :giskard_msgs/WholeBodyCommand "097f13fb94c4a201b4330a8facff3abe")


