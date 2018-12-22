;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::CollisionEntry)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'CollisionEntry (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::COLLISIONENTRY")
  (make-package "GISKARD_MSGS::COLLISIONENTRY"))

(in-package "ROS")
;;//! \htmlinclude CollisionEntry.msg.html


(intern "*AVOID_COLLISION*" (find-package "GISKARD_MSGS::COLLISIONENTRY"))
(shadow '*AVOID_COLLISION* (find-package "GISKARD_MSGS::COLLISIONENTRY"))
(defconstant giskard_msgs::CollisionEntry::*AVOID_COLLISION* 0)
(intern "*ALLOW_COLLISION*" (find-package "GISKARD_MSGS::COLLISIONENTRY"))
(shadow '*ALLOW_COLLISION* (find-package "GISKARD_MSGS::COLLISIONENTRY"))
(defconstant giskard_msgs::CollisionEntry::*ALLOW_COLLISION* 1)
(intern "*AVOID_ALL_COLLISIONS*" (find-package "GISKARD_MSGS::COLLISIONENTRY"))
(shadow '*AVOID_ALL_COLLISIONS* (find-package "GISKARD_MSGS::COLLISIONENTRY"))
(defconstant giskard_msgs::CollisionEntry::*AVOID_ALL_COLLISIONS* 2)
(intern "*ALLOW_ALL_COLLISIONS*" (find-package "GISKARD_MSGS::COLLISIONENTRY"))
(shadow '*ALLOW_ALL_COLLISIONS* (find-package "GISKARD_MSGS::COLLISIONENTRY"))
(defconstant giskard_msgs::CollisionEntry::*ALLOW_ALL_COLLISIONS* 3)
(defclass giskard_msgs::CollisionEntry
  :super ros::object
  :slots (_type _min_dist _robot_links _body_b _link_bs ))

(defmethod giskard_msgs::CollisionEntry
  (:init
   (&key
    ((:type __type) 0)
    ((:min_dist __min_dist) 0.0)
    ((:robot_links __robot_links) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:body_b __body_b) "")
    ((:link_bs __link_bs) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _min_dist (float __min_dist))
   (setq _robot_links __robot_links)
   (setq _body_b (string __body_b))
   (setq _link_bs __link_bs)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:min_dist
   (&optional __min_dist)
   (if __min_dist (setq _min_dist __min_dist)) _min_dist)
  (:robot_links
   (&optional __robot_links)
   (if __robot_links (setq _robot_links __robot_links)) _robot_links)
  (:body_b
   (&optional __body_b)
   (if __body_b (setq _body_b __body_b)) _body_b)
  (:link_bs
   (&optional __link_bs)
   (if __link_bs (setq _link_bs __link_bs)) _link_bs)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; float64 _min_dist
    8
    ;; string[] _robot_links
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _robot_links)) 4
    ;; string _body_b
    4 (length _body_b)
    ;; string[] _link_bs
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _link_bs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; float64 _min_dist
       (sys::poke _min_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _robot_links
     (write-long (length _robot_links) s)
     (dolist (elem _robot_links)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _body_b
       (write-long (length _body_b) s) (princ _body_b s)
     ;; string[] _link_bs
     (write-long (length _link_bs) s)
     (dolist (elem _link_bs)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _min_dist
     (setq _min_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string[] _robot_links
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_links (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _robot_links i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _body_b
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _body_b (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _link_bs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_bs (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _link_bs i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get giskard_msgs::CollisionEntry :md5sum-) "9c58e7dbe61bb1840e7343233a9d145c")
(setf (get giskard_msgs::CollisionEntry :datatype-) "giskard_msgs/CollisionEntry")
(setf (get giskard_msgs::CollisionEntry :definition-)
      "# definitions of possible collision types to use for value
uint8 AVOID_COLLISION=0
uint8 ALLOW_COLLISION=1
uint8 AVOID_ALL_COLLISIONS=2
uint8 ALLOW_ALL_COLLISIONS=3

# use one of the above constants as collision type
uint8 type

# enforced minimum distance between the closest points on both surfaces
float64 min_dist

# link of the controlled robot, if left empty all links will be selected
string[] robot_links

# name of body B, i.e. the second body in the described collision, can also be the controlled robot
string body_b
# optional: link of the particular link on body B
## note: only works if body B is a multibody with a link with that name
# note: if left empty, the entire body B is selected
string[] link_bs


")



(provide :giskard_msgs/CollisionEntry "9c58e7dbe61bb1840e7343233a9d145c")


