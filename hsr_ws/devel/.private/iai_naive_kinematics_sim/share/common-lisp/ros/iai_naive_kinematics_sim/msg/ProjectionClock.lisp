; Auto-generated. Do not edit!


(cl:in-package iai_naive_kinematics_sim-msg)


;//! \htmlinclude ProjectionClock.msg.html

(cl:defclass <ProjectionClock> (roslisp-msg-protocol:ros-message)
  ((now
    :reader now
    :initarg :now
    :type cl:real
    :initform 0)
   (period
    :reader period
    :initarg :period
    :type cl:real
    :initform 0))
)

(cl:defclass ProjectionClock (<ProjectionClock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProjectionClock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProjectionClock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iai_naive_kinematics_sim-msg:<ProjectionClock> is deprecated: use iai_naive_kinematics_sim-msg:ProjectionClock instead.")))

(cl:ensure-generic-function 'now-val :lambda-list '(m))
(cl:defmethod now-val ((m <ProjectionClock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_naive_kinematics_sim-msg:now-val is deprecated.  Use iai_naive_kinematics_sim-msg:now instead.")
  (now m))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <ProjectionClock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iai_naive_kinematics_sim-msg:period-val is deprecated.  Use iai_naive_kinematics_sim-msg:period instead.")
  (period m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProjectionClock>) ostream)
  "Serializes a message object of type '<ProjectionClock>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'now)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'now) (cl:floor (cl:slot-value msg 'now)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'period)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'period) (cl:floor (cl:slot-value msg 'period)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProjectionClock>) istream)
  "Deserializes a message object of type '<ProjectionClock>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'now) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'period) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProjectionClock>)))
  "Returns string type for a message object of type '<ProjectionClock>"
  "iai_naive_kinematics_sim/ProjectionClock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProjectionClock)))
  "Returns string type for a message object of type 'ProjectionClock"
  "iai_naive_kinematics_sim/ProjectionClock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProjectionClock>)))
  "Returns md5sum for a message object of type '<ProjectionClock>"
  "118d0ba873954aeb07014f682079aa06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProjectionClock)))
  "Returns md5sum for a message object of type 'ProjectionClock"
  "118d0ba873954aeb07014f682079aa06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProjectionClock>)))
  "Returns full string definition for message of type '<ProjectionClock>"
  (cl:format cl:nil "# ProjectionClock messages are used to synchronously advance the clock~%# of a set of nodes that provide distributed projection capabilities.~%# The original intention was to have it published by a central projection~%# management node that acts as a sort of pace-maker for the projection.~%~%time now         # time equivalent to ros::Time::now(), used to stamp data~%duration period  # duration between clock signals, used to advance projections~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProjectionClock)))
  "Returns full string definition for message of type 'ProjectionClock"
  (cl:format cl:nil "# ProjectionClock messages are used to synchronously advance the clock~%# of a set of nodes that provide distributed projection capabilities.~%# The original intention was to have it published by a central projection~%# management node that acts as a sort of pace-maker for the projection.~%~%time now         # time equivalent to ros::Time::now(), used to stamp data~%duration period  # duration between clock signals, used to advance projections~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProjectionClock>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProjectionClock>))
  "Converts a ROS message object to a list"
  (cl:list 'ProjectionClock
    (cl:cons ':now (now msg))
    (cl:cons ':period (period msg))
))
