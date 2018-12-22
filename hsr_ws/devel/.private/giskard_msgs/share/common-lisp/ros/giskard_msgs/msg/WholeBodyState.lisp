; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude WholeBodyState.msg.html

(cl:defclass <WholeBodyState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (running_time
    :reader running_time
    :initarg :running_time
    :type cl:real
    :initform 0)
   (left_arm_max_vel
    :reader left_arm_max_vel
    :initarg :left_arm_max_vel
    :type cl:float
    :initform 0.0)
   (right_arm_max_vel
    :reader right_arm_max_vel
    :initarg :right_arm_max_vel
    :type cl:float
    :initform 0.0)
   (torso_vel
    :reader torso_vel
    :initarg :torso_vel
    :type cl:float
    :initform 0.0)
   (convergence_values
    :reader convergence_values
    :initarg :convergence_values
    :type (cl:vector giskard_msgs-msg:SemanticFloat64)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:SemanticFloat64 :initial-element (cl:make-instance 'giskard_msgs-msg:SemanticFloat64)))
   (motion_started
    :reader motion_started
    :initarg :motion_started
    :type cl:boolean
    :initform cl:nil)
   (motion_old
    :reader motion_old
    :initarg :motion_old
    :type cl:boolean
    :initform cl:nil)
   (torso_moving
    :reader torso_moving
    :initarg :torso_moving
    :type cl:boolean
    :initform cl:nil)
   (left_arm_moving
    :reader left_arm_moving
    :initarg :left_arm_moving
    :type cl:boolean
    :initform cl:nil)
   (right_arm_moving
    :reader right_arm_moving
    :initarg :right_arm_moving
    :type cl:boolean
    :initform cl:nil)
   (convergence_flags
    :reader convergence_flags
    :initarg :convergence_flags
    :type (cl:vector giskard_msgs-msg:SemanticBool)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:SemanticBool :initial-element (cl:make-instance 'giskard_msgs-msg:SemanticBool))))
)

(cl:defclass WholeBodyState (<WholeBodyState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WholeBodyState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WholeBodyState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<WholeBodyState> is deprecated: use giskard_msgs-msg:WholeBodyState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:header-val is deprecated.  Use giskard_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'running_time-val :lambda-list '(m))
(cl:defmethod running_time-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:running_time-val is deprecated.  Use giskard_msgs-msg:running_time instead.")
  (running_time m))

(cl:ensure-generic-function 'left_arm_max_vel-val :lambda-list '(m))
(cl:defmethod left_arm_max_vel-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:left_arm_max_vel-val is deprecated.  Use giskard_msgs-msg:left_arm_max_vel instead.")
  (left_arm_max_vel m))

(cl:ensure-generic-function 'right_arm_max_vel-val :lambda-list '(m))
(cl:defmethod right_arm_max_vel-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:right_arm_max_vel-val is deprecated.  Use giskard_msgs-msg:right_arm_max_vel instead.")
  (right_arm_max_vel m))

(cl:ensure-generic-function 'torso_vel-val :lambda-list '(m))
(cl:defmethod torso_vel-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:torso_vel-val is deprecated.  Use giskard_msgs-msg:torso_vel instead.")
  (torso_vel m))

(cl:ensure-generic-function 'convergence_values-val :lambda-list '(m))
(cl:defmethod convergence_values-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:convergence_values-val is deprecated.  Use giskard_msgs-msg:convergence_values instead.")
  (convergence_values m))

(cl:ensure-generic-function 'motion_started-val :lambda-list '(m))
(cl:defmethod motion_started-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:motion_started-val is deprecated.  Use giskard_msgs-msg:motion_started instead.")
  (motion_started m))

(cl:ensure-generic-function 'motion_old-val :lambda-list '(m))
(cl:defmethod motion_old-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:motion_old-val is deprecated.  Use giskard_msgs-msg:motion_old instead.")
  (motion_old m))

(cl:ensure-generic-function 'torso_moving-val :lambda-list '(m))
(cl:defmethod torso_moving-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:torso_moving-val is deprecated.  Use giskard_msgs-msg:torso_moving instead.")
  (torso_moving m))

(cl:ensure-generic-function 'left_arm_moving-val :lambda-list '(m))
(cl:defmethod left_arm_moving-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:left_arm_moving-val is deprecated.  Use giskard_msgs-msg:left_arm_moving instead.")
  (left_arm_moving m))

(cl:ensure-generic-function 'right_arm_moving-val :lambda-list '(m))
(cl:defmethod right_arm_moving-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:right_arm_moving-val is deprecated.  Use giskard_msgs-msg:right_arm_moving instead.")
  (right_arm_moving m))

(cl:ensure-generic-function 'convergence_flags-val :lambda-list '(m))
(cl:defmethod convergence_flags-val ((m <WholeBodyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:convergence_flags-val is deprecated.  Use giskard_msgs-msg:convergence_flags instead.")
  (convergence_flags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WholeBodyState>) ostream)
  "Serializes a message object of type '<WholeBodyState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'running_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'running_time) (cl:floor (cl:slot-value msg 'running_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_arm_max_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_arm_max_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'torso_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'convergence_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'convergence_values))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motion_started) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motion_old) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'torso_moving) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_arm_moving) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_arm_moving) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'convergence_flags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'convergence_flags))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WholeBodyState>) istream)
  "Deserializes a message object of type '<WholeBodyState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'running_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_arm_max_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_arm_max_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torso_vel) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'convergence_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'convergence_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:SemanticFloat64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'motion_started) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motion_old) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'torso_moving) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_arm_moving) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_arm_moving) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'convergence_flags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'convergence_flags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:SemanticBool))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WholeBodyState>)))
  "Returns string type for a message object of type '<WholeBodyState>"
  "giskard_msgs/WholeBodyState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WholeBodyState)))
  "Returns string type for a message object of type 'WholeBodyState"
  "giskard_msgs/WholeBodyState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WholeBodyState>)))
  "Returns md5sum for a message object of type '<WholeBodyState>"
  "b441f43466bb7375e7ea0632d6d9b0f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WholeBodyState)))
  "Returns md5sum for a message object of type 'WholeBodyState"
  "b441f43466bb7375e7ea0632d6d9b0f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WholeBodyState>)))
  "Returns full string definition for message of type '<WholeBodyState>"
  (cl:format cl:nil "# only using timestamp for the moment~%std_msgs/Header header~%~%# feature values used to make decisions about succeeded actions~%duration running_time~%float64 left_arm_max_vel~%float64 right_arm_max_vel~%float64 torso_vel~%giskard_msgs/SemanticFloat64[] convergence_values # internal values used to decide convergence~%~%# classification results used to decide whether action succeeded~%bool motion_started # true, as soon low-level controller has started execution the command~%bool motion_old # true, if time passed since start of motion is above threshold~%bool torso_moving # true, if torso velocity is above threshold~%bool left_arm_moving # true, if velocity of any joint of left arm is above threshold~%bool right_arm_moving # true, if velocity of any joint of right arm is above threshold~%giskard_msgs/SemanticBool[] convergence_flags # true, if the corresponding feature values are below a threshold~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: giskard_msgs/SemanticFloat64~%# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%================================================================================~%MSG: giskard_msgs/SemanticBool~%# A bool with semantics hint attached.~%# Note: I know this is not much but better than just the bool. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WholeBodyState)))
  "Returns full string definition for message of type 'WholeBodyState"
  (cl:format cl:nil "# only using timestamp for the moment~%std_msgs/Header header~%~%# feature values used to make decisions about succeeded actions~%duration running_time~%float64 left_arm_max_vel~%float64 right_arm_max_vel~%float64 torso_vel~%giskard_msgs/SemanticFloat64[] convergence_values # internal values used to decide convergence~%~%# classification results used to decide whether action succeeded~%bool motion_started # true, as soon low-level controller has started execution the command~%bool motion_old # true, if time passed since start of motion is above threshold~%bool torso_moving # true, if torso velocity is above threshold~%bool left_arm_moving # true, if velocity of any joint of left arm is above threshold~%bool right_arm_moving # true, if velocity of any joint of right arm is above threshold~%giskard_msgs/SemanticBool[] convergence_flags # true, if the corresponding feature values are below a threshold~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: giskard_msgs/SemanticFloat64~%# A floating-point with semantics hint attached.~%# Note: I know this is not much but better than just the number. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%float64 value~%~%================================================================================~%MSG: giskard_msgs/SemanticBool~%# A bool with semantics hint attached.~%# Note: I know this is not much but better than just the bool. ;)~%~%# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.~%string semantics~%# The actual value communicated.~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WholeBodyState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'convergence_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'convergence_flags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WholeBodyState>))
  "Converts a ROS message object to a list"
  (cl:list 'WholeBodyState
    (cl:cons ':header (header msg))
    (cl:cons ':running_time (running_time msg))
    (cl:cons ':left_arm_max_vel (left_arm_max_vel msg))
    (cl:cons ':right_arm_max_vel (right_arm_max_vel msg))
    (cl:cons ':torso_vel (torso_vel msg))
    (cl:cons ':convergence_values (convergence_values msg))
    (cl:cons ':motion_started (motion_started msg))
    (cl:cons ':motion_old (motion_old msg))
    (cl:cons ':torso_moving (torso_moving msg))
    (cl:cons ':left_arm_moving (left_arm_moving msg))
    (cl:cons ':right_arm_moving (right_arm_moving msg))
    (cl:cons ':convergence_flags (convergence_flags msg))
))
