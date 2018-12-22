;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::ControllerFeedback)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'ControllerFeedback (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::CONTROLLERFEEDBACK")
  (make-package "GISKARD_MSGS::CONTROLLERFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ControllerFeedback.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass giskard_msgs::ControllerFeedback
  :super ros::object
  :slots (_header _watchdog_active _commands _slacks _convergence_features _doubles _vectors _current_command _current_command_hash ))

(defmethod giskard_msgs::ControllerFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:watchdog_active __watchdog_active) nil)
    ((:commands __commands) (instance sensor_msgs::JointState :init))
    ((:slacks __slacks) (let (r) (dotimes (i 0) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
    ((:convergence_features __convergence_features) (let (r) (dotimes (i 0) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
    ((:doubles __doubles) (let (r) (dotimes (i 0) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
    ((:vectors __vectors) (let (r) (dotimes (i 0) (push (instance giskard_msgs::SemanticVector3 :init) r)) r))
    ((:current_command __current_command) (instance giskard_msgs::WholeBodyCommand :init))
    ((:current_command_hash __current_command_hash) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _watchdog_active __watchdog_active)
   (setq _commands __commands)
   (setq _slacks __slacks)
   (setq _convergence_features __convergence_features)
   (setq _doubles __doubles)
   (setq _vectors __vectors)
   (setq _current_command __current_command)
   (setq _current_command_hash (round __current_command_hash))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:watchdog_active
   (&optional __watchdog_active)
   (if __watchdog_active (setq _watchdog_active __watchdog_active)) _watchdog_active)
  (:commands
   (&rest __commands)
   (if (keywordp (car __commands))
       (send* _commands __commands)
     (progn
       (if __commands (setq _commands (car __commands)))
       _commands)))
  (:slacks
   (&rest __slacks)
   (if (keywordp (car __slacks))
       (send* _slacks __slacks)
     (progn
       (if __slacks (setq _slacks (car __slacks)))
       _slacks)))
  (:convergence_features
   (&rest __convergence_features)
   (if (keywordp (car __convergence_features))
       (send* _convergence_features __convergence_features)
     (progn
       (if __convergence_features (setq _convergence_features (car __convergence_features)))
       _convergence_features)))
  (:doubles
   (&rest __doubles)
   (if (keywordp (car __doubles))
       (send* _doubles __doubles)
     (progn
       (if __doubles (setq _doubles (car __doubles)))
       _doubles)))
  (:vectors
   (&rest __vectors)
   (if (keywordp (car __vectors))
       (send* _vectors __vectors)
     (progn
       (if __vectors (setq _vectors (car __vectors)))
       _vectors)))
  (:current_command
   (&rest __current_command)
   (if (keywordp (car __current_command))
       (send* _current_command __current_command)
     (progn
       (if __current_command (setq _current_command (car __current_command)))
       _current_command)))
  (:current_command_hash
   (&optional __current_command_hash)
   (if __current_command_hash (setq _current_command_hash __current_command_hash)) _current_command_hash)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _watchdog_active
    1
    ;; sensor_msgs/JointState _commands
    (send _commands :serialization-length)
    ;; giskard_msgs/SemanticFloat64[] _slacks
    (apply #'+ (send-all _slacks :serialization-length)) 4
    ;; giskard_msgs/SemanticFloat64[] _convergence_features
    (apply #'+ (send-all _convergence_features :serialization-length)) 4
    ;; giskard_msgs/SemanticFloat64[] _doubles
    (apply #'+ (send-all _doubles :serialization-length)) 4
    ;; giskard_msgs/SemanticVector3[] _vectors
    (apply #'+ (send-all _vectors :serialization-length)) 4
    ;; giskard_msgs/WholeBodyCommand _current_command
    (send _current_command :serialization-length)
    ;; uint64 _current_command_hash
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _watchdog_active
       (if _watchdog_active (write-byte -1 s) (write-byte 0 s))
     ;; sensor_msgs/JointState _commands
       (send _commands :serialize s)
     ;; giskard_msgs/SemanticFloat64[] _slacks
     (write-long (length _slacks) s)
     (dolist (elem _slacks)
       (send elem :serialize s)
       )
     ;; giskard_msgs/SemanticFloat64[] _convergence_features
     (write-long (length _convergence_features) s)
     (dolist (elem _convergence_features)
       (send elem :serialize s)
       )
     ;; giskard_msgs/SemanticFloat64[] _doubles
     (write-long (length _doubles) s)
     (dolist (elem _doubles)
       (send elem :serialize s)
       )
     ;; giskard_msgs/SemanticVector3[] _vectors
     (write-long (length _vectors) s)
     (dolist (elem _vectors)
       (send elem :serialize s)
       )
     ;; giskard_msgs/WholeBodyCommand _current_command
       (send _current_command :serialize s)
     ;; uint64 _current_command_hash
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _current_command_hash (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _current_command_hash) (= (length (_current_command_hash . bv)) 2)) ;; bignum
              (write-long (ash (elt (_current_command_hash . bv) 0) 0) s)
              (write-long (ash (elt (_current_command_hash . bv) 1) -1) s))
             ((and (class _current_command_hash) (= (length (_current_command_hash . bv)) 1)) ;; big1
              (write-long (elt (_current_command_hash . bv) 0) s)
              (write-long (if (>= _current_command_hash 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _current_command_hash s)(write-long (if (>= _current_command_hash 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _watchdog_active
     (setq _watchdog_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; sensor_msgs/JointState _commands
     (send _commands :deserialize buf ptr-) (incf ptr- (send _commands :serialization-length))
   ;; giskard_msgs/SemanticFloat64[] _slacks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _slacks (let (r) (dotimes (i n) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
     (dolist (elem- _slacks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; giskard_msgs/SemanticFloat64[] _convergence_features
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _convergence_features (let (r) (dotimes (i n) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
     (dolist (elem- _convergence_features)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; giskard_msgs/SemanticFloat64[] _doubles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _doubles (let (r) (dotimes (i n) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
     (dolist (elem- _doubles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; giskard_msgs/SemanticVector3[] _vectors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vectors (let (r) (dotimes (i n) (push (instance giskard_msgs::SemanticVector3 :init) r)) r))
     (dolist (elem- _vectors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; giskard_msgs/WholeBodyCommand _current_command
     (send _current_command :deserialize buf ptr-) (incf ptr- (send _current_command :serialization-length))
   ;; uint64 _current_command_hash
     
#+(or :alpha :irix6 :x86_64)
      (setf _current_command_hash (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _current_command_hash (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get giskard_msgs::ControllerFeedback :md5sum-) "6aebd1d0d24e8782cff521a077935cd4")
(setf (get giskard_msgs::ControllerFeedback :datatype-) "giskard_msgs/ControllerFeedback")
(setf (get giskard_msgs::ControllerFeedback :definition-)
      "# Feedback provided by giskard controllers.

# Header to communicate timestamps, and being compatible with message-filters.
std_msgs/Header header
# Flag to indicate whether the watchdog is active
bool watchdog_active
# Commands issued to motor controllers, expressed with semantics hints.
sensor_msgs/JointState commands
# Slack values of task functions, expressed with semantics hints.
giskard_msgs/SemanticFloat64[] slacks
# Internal double expressions used to decide convergence
giskard_msgs/SemanticFloat64[] convergence_features
# Internal double expressions wired through for debugging
giskard_msgs/SemanticFloat64[] doubles
# Internal vector expressions wired through for debugging
giskard_msgs/SemanticVector3[] vectors

# Command that the controller is currently pursuing
giskard_msgs/WholeBodyCommand current_command
# Hash of the current command calculated by the controller
uint64 current_command_hash

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
MSG: giskard_msgs/SemanticFloat64
# A floating-point with semantics hint attached.
# Note: I know this is not much but better than just the number. ;)

# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
string semantics
# The actual value communicated.
float64 value

================================================================================
MSG: giskard_msgs/SemanticVector3
# A 3d vector with semantics hint attached.
# Note: I know this is not much but better than just the number. ;)

# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
string semantics
# The actual value communicated.
geometry_msgs/Vector3 value

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: giskard_msgs/WholeBodyCommand
# A whole-body command message for a mobile manipulator with a morphology 
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



(provide :giskard_msgs/ControllerFeedback "6aebd1d0d24e8782cff521a077935cd4")


