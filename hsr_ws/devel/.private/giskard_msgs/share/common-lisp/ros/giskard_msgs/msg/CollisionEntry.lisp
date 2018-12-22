; Auto-generated. Do not edit!


(cl:in-package giskard_msgs-msg)


;//! \htmlinclude CollisionEntry.msg.html

(cl:defclass <CollisionEntry> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (min_dist
    :reader min_dist
    :initarg :min_dist
    :type cl:float
    :initform 0.0)
   (robot_links
    :reader robot_links
    :initarg :robot_links
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (body_b
    :reader body_b
    :initarg :body_b
    :type cl:string
    :initform "")
   (link_bs
    :reader link_bs
    :initarg :link_bs
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass CollisionEntry (<CollisionEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name giskard_msgs-msg:<CollisionEntry> is deprecated: use giskard_msgs-msg:CollisionEntry instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CollisionEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:type-val is deprecated.  Use giskard_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'min_dist-val :lambda-list '(m))
(cl:defmethod min_dist-val ((m <CollisionEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:min_dist-val is deprecated.  Use giskard_msgs-msg:min_dist instead.")
  (min_dist m))

(cl:ensure-generic-function 'robot_links-val :lambda-list '(m))
(cl:defmethod robot_links-val ((m <CollisionEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:robot_links-val is deprecated.  Use giskard_msgs-msg:robot_links instead.")
  (robot_links m))

(cl:ensure-generic-function 'body_b-val :lambda-list '(m))
(cl:defmethod body_b-val ((m <CollisionEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:body_b-val is deprecated.  Use giskard_msgs-msg:body_b instead.")
  (body_b m))

(cl:ensure-generic-function 'link_bs-val :lambda-list '(m))
(cl:defmethod link_bs-val ((m <CollisionEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader giskard_msgs-msg:link_bs-val is deprecated.  Use giskard_msgs-msg:link_bs instead.")
  (link_bs m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CollisionEntry>)))
    "Constants for message type '<CollisionEntry>"
  '((:AVOID_COLLISION . 0)
    (:ALLOW_COLLISION . 1)
    (:AVOID_ALL_COLLISIONS . 2)
    (:ALLOW_ALL_COLLISIONS . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CollisionEntry)))
    "Constants for message type 'CollisionEntry"
  '((:AVOID_COLLISION . 0)
    (:ALLOW_COLLISION . 1)
    (:AVOID_ALL_COLLISIONS . 2)
    (:ALLOW_ALL_COLLISIONS . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionEntry>) ostream)
  "Serializes a message object of type '<CollisionEntry>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_links))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'robot_links))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'body_b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'body_b))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'link_bs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'link_bs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionEntry>) istream)
  "Deserializes a message object of type '<CollisionEntry>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_dist) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_links) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_links)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'body_b) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'body_b) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'link_bs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'link_bs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionEntry>)))
  "Returns string type for a message object of type '<CollisionEntry>"
  "giskard_msgs/CollisionEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionEntry)))
  "Returns string type for a message object of type 'CollisionEntry"
  "giskard_msgs/CollisionEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionEntry>)))
  "Returns md5sum for a message object of type '<CollisionEntry>"
  "9c58e7dbe61bb1840e7343233a9d145c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionEntry)))
  "Returns md5sum for a message object of type 'CollisionEntry"
  "9c58e7dbe61bb1840e7343233a9d145c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionEntry>)))
  "Returns full string definition for message of type '<CollisionEntry>"
  (cl:format cl:nil "# definitions of possible collision types to use for value~%uint8 AVOID_COLLISION=0~%uint8 ALLOW_COLLISION=1~%uint8 AVOID_ALL_COLLISIONS=2~%uint8 ALLOW_ALL_COLLISIONS=3~%~%# use one of the above constants as collision type~%uint8 type~%~%# enforced minimum distance between the closest points on both surfaces~%float64 min_dist~%~%# link of the controlled robot, if left empty all links will be selected~%string[] robot_links~%~%# name of body B, i.e. the second body in the described collision, can also be the controlled robot~%string body_b~%# optional: link of the particular link on body B~%## note: only works if body B is a multibody with a link with that name~%# note: if left empty, the entire body B is selected~%string[] link_bs~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionEntry)))
  "Returns full string definition for message of type 'CollisionEntry"
  (cl:format cl:nil "# definitions of possible collision types to use for value~%uint8 AVOID_COLLISION=0~%uint8 ALLOW_COLLISION=1~%uint8 AVOID_ALL_COLLISIONS=2~%uint8 ALLOW_ALL_COLLISIONS=3~%~%# use one of the above constants as collision type~%uint8 type~%~%# enforced minimum distance between the closest points on both surfaces~%float64 min_dist~%~%# link of the controlled robot, if left empty all links will be selected~%string[] robot_links~%~%# name of body B, i.e. the second body in the described collision, can also be the controlled robot~%string body_b~%# optional: link of the particular link on body B~%## note: only works if body B is a multibody with a link with that name~%# note: if left empty, the entire body B is selected~%string[] link_bs~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionEntry>))
  (cl:+ 0
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_links) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'body_b))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'link_bs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionEntry
    (cl:cons ':type (type msg))
    (cl:cons ':min_dist (min_dist msg))
    (cl:cons ':robot_links (robot_links msg))
    (cl:cons ':body_b (body_b msg))
    (cl:cons ':link_bs (link_bs msg))
))
