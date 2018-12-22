; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude MoveCmd.msg.html

(cl:defclass <MoveCmd> (roslisp-msg-protocol:ros-message)
  ((controllers
    :reader controllers
    :initarg :controllers
    :type (cl:vector giskard_msgs-msg:Controller)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:Controller :initial-element (cl:make-instance 'giskard_msgs-msg:Controller)))
   (collisions
    :reader collisions
    :initarg :collisions
    :type (cl:vector giskard_msgs-msg:CollisionEntry)
   :initform (cl:make-array 0 :element-type 'giskard_msgs-msg:CollisionEntry :initial-element (cl:make-instance 'giskard_msgs-msg:CollisionEntry))))
)

(cl:defclass MoveCmd (<MoveCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<MoveCmd> is deprecated: use giskard_msgs-msg:MoveCmd instead.")))

(cl:ensure-generic-function 'controllers-val :lambda-list '(m))
(cl:defmethod controllers-val ((m <MoveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:controllers-val is deprecated.  Use giskard_msgs-msg:controllers instead.")
  (controllers m))

(cl:ensure-generic-function 'collisions-val :lambda-list '(m))
(cl:defmethod collisions-val ((m <MoveCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:collisions-val is deprecated.  Use giskard_msgs-msg:collisions instead.")
  (collisions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveCmd>) ostream)
  "Serializes a message object of type '<MoveCmd>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controllers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'controllers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collisions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'collisions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveCmd>) istream)
  "Deserializes a message object of type '<MoveCmd>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controllers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controllers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:Controller))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collisions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collisions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'giskard_msgs-msg:CollisionEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveCmd>)))
  "Returns string type for a message object of type '<MoveCmd>"
  "giskard_msgs/MoveCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveCmd)))
  "Returns string type for a message object of type 'MoveCmd"
  "giskard_msgs/MoveCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveCmd>)))
  "Returns md5sum for a message object of type '<MoveCmd>"
  "60b77fd43284c921383c3d2e3bc7bf84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveCmd)))
  "Returns md5sum for a message object of type 'MoveCmd"
  "60b77fd43284c921383c3d2e3bc7bf84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveCmd>)))
  "Returns full string definition for message of type '<MoveCmd>"
  (cl:format cl:nil "# Set of controllers that need to converge for this command to finish~%giskard_msgs/Controller[] controllers~%~%# Set of special collision states that shall hold during the movement~%giskard_msgs/CollisionEntry[] collisions~%~%================================================================================~%MSG: giskard_msgs/Controller~%# definitions of possible values to use as type~%uint8 UNDEFINED=0~%uint8 JOINT=1~%uint8 TRANSLATION_3D=2~%uint8 ROTATION_3D=3~%~%# use of the above constants to indicate the type of controller~%uint8 type~%~%# Name of the link that is at the start of the controlled kinematic chain~%string root_link~%~%# Name of the link that is at the end of the controlled kinematic chain~%string tip_link ~%~%# Proportional gain used by the controller~%float64 p_gain~%~%# Weight assigned to the controller within the cost-function solved in each cycle~%float64 weight~%~%# Maximum speed~%# m/s if type==TRANSLATION_3D~%# rad/s if type==ROTATION_3D~%# min(max_speed, joint_velocity_limit_specified_in_urdf) if type==JOINT~%float64 max_speed~%~%# controller goal, interpretation depends on value in type field~%# JOINT: ignores this field~%# TRANSLATION_3D: desired translation of tip_link relative to root_link~%# ROTATION_3D: desired orientation of tip_link relative to root_link~%geometry_msgs/PoseStamped goal_pose~%~%# controller goal, interpretation depends on value in type field~%# JOINT: reads the position values for all joints in the kinematic chain between root_link and tip_link~%# TRANSLATION_3D: ignores this field~%# ROTATION_3D: ignores this field~%sensor_msgs/JointState goal_state~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: giskard_msgs/CollisionEntry~%# definitions of possible collision types to use for value~%uint8 AVOID_COLLISION=0~%uint8 ALLOW_COLLISION=1~%uint8 AVOID_ALL_COLLISIONS=2~%uint8 ALLOW_ALL_COLLISIONS=3~%~%# use one of the above constants as collision type~%uint8 type~%~%# enforced minimum distance between the closest points on both surfaces~%float64 min_dist~%~%# link of the controlled robot, if left empty all links will be selected~%string[] robot_links~%~%# name of body B, i.e. the second body in the described collision, can also be the controlled robot~%string body_b~%# optional: link of the particular link on body B~%## note: only works if body B is a multibody with a link with that name~%# note: if left empty, the entire body B is selected~%string[] link_bs~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveCmd)))
  "Returns full string definition for message of type 'MoveCmd"
  (cl:format cl:nil "# Set of controllers that need to converge for this command to finish~%giskard_msgs/Controller[] controllers~%~%# Set of special collision states that shall hold during the movement~%giskard_msgs/CollisionEntry[] collisions~%~%================================================================================~%MSG: giskard_msgs/Controller~%# definitions of possible values to use as type~%uint8 UNDEFINED=0~%uint8 JOINT=1~%uint8 TRANSLATION_3D=2~%uint8 ROTATION_3D=3~%~%# use of the above constants to indicate the type of controller~%uint8 type~%~%# Name of the link that is at the start of the controlled kinematic chain~%string root_link~%~%# Name of the link that is at the end of the controlled kinematic chain~%string tip_link ~%~%# Proportional gain used by the controller~%float64 p_gain~%~%# Weight assigned to the controller within the cost-function solved in each cycle~%float64 weight~%~%# Maximum speed~%# m/s if type==TRANSLATION_3D~%# rad/s if type==ROTATION_3D~%# min(max_speed, joint_velocity_limit_specified_in_urdf) if type==JOINT~%float64 max_speed~%~%# controller goal, interpretation depends on value in type field~%# JOINT: ignores this field~%# TRANSLATION_3D: desired translation of tip_link relative to root_link~%# ROTATION_3D: desired orientation of tip_link relative to root_link~%geometry_msgs/PoseStamped goal_pose~%~%# controller goal, interpretation depends on value in type field~%# JOINT: reads the position values for all joints in the kinematic chain between root_link and tip_link~%# TRANSLATION_3D: ignores this field~%# ROTATION_3D: ignores this field~%sensor_msgs/JointState goal_state~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: giskard_msgs/CollisionEntry~%# definitions of possible collision types to use for value~%uint8 AVOID_COLLISION=0~%uint8 ALLOW_COLLISION=1~%uint8 AVOID_ALL_COLLISIONS=2~%uint8 ALLOW_ALL_COLLISIONS=3~%~%# use one of the above constants as collision type~%uint8 type~%~%# enforced minimum distance between the closest points on both surfaces~%float64 min_dist~%~%# link of the controlled robot, if left empty all links will be selected~%string[] robot_links~%~%# name of body B, i.e. the second body in the described collision, can also be the controlled robot~%string body_b~%# optional: link of the particular link on body B~%## note: only works if body B is a multibody with a link with that name~%# note: if left empty, the entire body B is selected~%string[] link_bs~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveCmd>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controllers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collisions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveCmd
    (cl:cons ':controllers (controllers msg))
    (cl:cons ':collisions (collisions msg))
))
