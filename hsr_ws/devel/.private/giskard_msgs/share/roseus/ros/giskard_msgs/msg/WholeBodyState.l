;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::WholeBodyState)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'WholeBodyState (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::WHOLEBODYSTATE")
  (make-package "GISKARD_MSGS::WHOLEBODYSTATE"))

(in-package "ROS")
;;//! \htmlinclude WholeBodyState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass giskard_msgs::WholeBodyState
  :super ros::object
  :slots (_header _running_time _left_arm_max_vel _right_arm_max_vel _torso_vel _convergence_values _motion_started _motion_old _torso_moving _left_arm_moving _right_arm_moving _convergence_flags ))

(defmethod giskard_msgs::WholeBodyState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:running_time __running_time) (instance ros::time :init))
    ((:left_arm_max_vel __left_arm_max_vel) 0.0)
    ((:right_arm_max_vel __right_arm_max_vel) 0.0)
    ((:torso_vel __torso_vel) 0.0)
    ((:convergence_values __convergence_values) (let (r) (dotimes (i 0) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
    ((:motion_started __motion_started) nil)
    ((:motion_old __motion_old) nil)
    ((:torso_moving __torso_moving) nil)
    ((:left_arm_moving __left_arm_moving) nil)
    ((:right_arm_moving __right_arm_moving) nil)
    ((:convergence_flags __convergence_flags) (let (r) (dotimes (i 0) (push (instance giskard_msgs::SemanticBool :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _running_time __running_time)
   (setq _left_arm_max_vel (float __left_arm_max_vel))
   (setq _right_arm_max_vel (float __right_arm_max_vel))
   (setq _torso_vel (float __torso_vel))
   (setq _convergence_values __convergence_values)
   (setq _motion_started __motion_started)
   (setq _motion_old __motion_old)
   (setq _torso_moving __torso_moving)
   (setq _left_arm_moving __left_arm_moving)
   (setq _right_arm_moving __right_arm_moving)
   (setq _convergence_flags __convergence_flags)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:running_time
   (&optional __running_time)
   (if __running_time (setq _running_time __running_time)) _running_time)
  (:left_arm_max_vel
   (&optional __left_arm_max_vel)
   (if __left_arm_max_vel (setq _left_arm_max_vel __left_arm_max_vel)) _left_arm_max_vel)
  (:right_arm_max_vel
   (&optional __right_arm_max_vel)
   (if __right_arm_max_vel (setq _right_arm_max_vel __right_arm_max_vel)) _right_arm_max_vel)
  (:torso_vel
   (&optional __torso_vel)
   (if __torso_vel (setq _torso_vel __torso_vel)) _torso_vel)
  (:convergence_values
   (&rest __convergence_values)
   (if (keywordp (car __convergence_values))
       (send* _convergence_values __convergence_values)
     (progn
       (if __convergence_values (setq _convergence_values (car __convergence_values)))
       _convergence_values)))
  (:motion_started
   (&optional __motion_started)
   (if __motion_started (setq _motion_started __motion_started)) _motion_started)
  (:motion_old
   (&optional __motion_old)
   (if __motion_old (setq _motion_old __motion_old)) _motion_old)
  (:torso_moving
   (&optional __torso_moving)
   (if __torso_moving (setq _torso_moving __torso_moving)) _torso_moving)
  (:left_arm_moving
   (&optional __left_arm_moving)
   (if __left_arm_moving (setq _left_arm_moving __left_arm_moving)) _left_arm_moving)
  (:right_arm_moving
   (&optional __right_arm_moving)
   (if __right_arm_moving (setq _right_arm_moving __right_arm_moving)) _right_arm_moving)
  (:convergence_flags
   (&rest __convergence_flags)
   (if (keywordp (car __convergence_flags))
       (send* _convergence_flags __convergence_flags)
     (progn
       (if __convergence_flags (setq _convergence_flags (car __convergence_flags)))
       _convergence_flags)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; duration _running_time
    8
    ;; float64 _left_arm_max_vel
    8
    ;; float64 _right_arm_max_vel
    8
    ;; float64 _torso_vel
    8
    ;; giskard_msgs/SemanticFloat64[] _convergence_values
    (apply #'+ (send-all _convergence_values :serialization-length)) 4
    ;; bool _motion_started
    1
    ;; bool _motion_old
    1
    ;; bool _torso_moving
    1
    ;; bool _left_arm_moving
    1
    ;; bool _right_arm_moving
    1
    ;; giskard_msgs/SemanticBool[] _convergence_flags
    (apply #'+ (send-all _convergence_flags :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; duration _running_time
       (write-long (send _running_time :sec) s) (write-long (send _running_time :nsec) s)
     ;; float64 _left_arm_max_vel
       (sys::poke _left_arm_max_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_arm_max_vel
       (sys::poke _right_arm_max_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _torso_vel
       (sys::poke _torso_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; giskard_msgs/SemanticFloat64[] _convergence_values
     (write-long (length _convergence_values) s)
     (dolist (elem _convergence_values)
       (send elem :serialize s)
       )
     ;; bool _motion_started
       (if _motion_started (write-byte -1 s) (write-byte 0 s))
     ;; bool _motion_old
       (if _motion_old (write-byte -1 s) (write-byte 0 s))
     ;; bool _torso_moving
       (if _torso_moving (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_arm_moving
       (if _left_arm_moving (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_arm_moving
       (if _right_arm_moving (write-byte -1 s) (write-byte 0 s))
     ;; giskard_msgs/SemanticBool[] _convergence_flags
     (write-long (length _convergence_flags) s)
     (dolist (elem _convergence_flags)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; duration _running_time
     (send _running_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _running_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _left_arm_max_vel
     (setq _left_arm_max_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_arm_max_vel
     (setq _right_arm_max_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _torso_vel
     (setq _torso_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; giskard_msgs/SemanticFloat64[] _convergence_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _convergence_values (let (r) (dotimes (i n) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
     (dolist (elem- _convergence_values)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _motion_started
     (setq _motion_started (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motion_old
     (setq _motion_old (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _torso_moving
     (setq _torso_moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_arm_moving
     (setq _left_arm_moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_arm_moving
     (setq _right_arm_moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; giskard_msgs/SemanticBool[] _convergence_flags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _convergence_flags (let (r) (dotimes (i n) (push (instance giskard_msgs::SemanticBool :init) r)) r))
     (dolist (elem- _convergence_flags)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get giskard_msgs::WholeBodyState :md5sum-) "b441f43466bb7375e7ea0632d6d9b0f3")
(setf (get giskard_msgs::WholeBodyState :datatype-) "giskard_msgs/WholeBodyState")
(setf (get giskard_msgs::WholeBodyState :definition-)
      "# only using timestamp for the moment
std_msgs/Header header

# feature values used to make decisions about succeeded actions
duration running_time
float64 left_arm_max_vel
float64 right_arm_max_vel
float64 torso_vel
giskard_msgs/SemanticFloat64[] convergence_values # internal values used to decide convergence

# classification results used to decide whether action succeeded
bool motion_started # true, as soon low-level controller has started execution the command
bool motion_old # true, if time passed since start of motion is above threshold
bool torso_moving # true, if torso velocity is above threshold
bool left_arm_moving # true, if velocity of any joint of left arm is above threshold
bool right_arm_moving # true, if velocity of any joint of right arm is above threshold
giskard_msgs/SemanticBool[] convergence_flags # true, if the corresponding feature values are below a threshold

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
MSG: giskard_msgs/SemanticFloat64
# A floating-point with semantics hint attached.
# Note: I know this is not much but better than just the number. ;)

# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
string semantics
# The actual value communicated.
float64 value

================================================================================
MSG: giskard_msgs/SemanticBool
# A bool with semantics hint attached.
# Note: I know this is not much but better than just the bool. ;)

# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
string semantics
# The actual value communicated.
bool value

")



(provide :giskard_msgs/WholeBodyState "b441f43466bb7375e7ea0632d6d9b0f3")


