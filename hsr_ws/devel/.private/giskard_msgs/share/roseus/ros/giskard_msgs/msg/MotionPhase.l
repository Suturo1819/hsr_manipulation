;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::MotionPhase)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'MotionPhase (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::MOTIONPHASE")
  (make-package "GISKARD_MSGS::MOTIONPHASE"))

(in-package "ROS")
;;//! \htmlinclude MotionPhase.msg.html


(defclass giskard_msgs::MotionPhase
  :super ros::object
  :slots (_name _constraints ))

(defmethod giskard_msgs::MotionPhase
  (:init
   (&key
    ((:name __name) "")
    ((:constraints __constraints) (let (r) (dotimes (i 0) (push (instance giskard_msgs::Constraint :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _constraints __constraints)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:constraints
   (&rest __constraints)
   (if (keywordp (car __constraints))
       (send* _constraints __constraints)
     (progn
       (if __constraints (setq _constraints (car __constraints)))
       _constraints)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; giskard_msgs/Constraint[] _constraints
    (apply #'+ (send-all _constraints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; giskard_msgs/Constraint[] _constraints
     (write-long (length _constraints) s)
     (dolist (elem _constraints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; giskard_msgs/Constraint[] _constraints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _constraints (let (r) (dotimes (i n) (push (instance giskard_msgs::Constraint :init) r)) r))
     (dolist (elem- _constraints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get giskard_msgs::MotionPhase :md5sum-) "a0948cf625fccf5454fdbf95bfb4d2d5")
(setf (get giskard_msgs::MotionPhase :datatype-) "giskard_msgs/MotionPhase")
(setf (get giskard_msgs::MotionPhase :definition-)
      "# definition of a task-specific motion phase

# identifier of the motion phase
string name

# a list of constraints representing the motion goal
giskard_msgs/Constraint[] constraints

================================================================================
MSG: giskard_msgs/Constraint
# a string identifying the expression behind the constraint
string name

# desired lower and upper boundaries that shall be enforced
float64 lower
float64 upper

")



(provide :giskard_msgs/MotionPhase "a0948cf625fccf5454fdbf95bfb4d2d5")


