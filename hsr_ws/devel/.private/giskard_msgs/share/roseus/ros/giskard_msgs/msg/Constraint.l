;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::Constraint)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'Constraint (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::CONSTRAINT")
  (make-package "GISKARD_MSGS::CONSTRAINT"))

(in-package "ROS")
;;//! \htmlinclude Constraint.msg.html


(defclass giskard_msgs::Constraint
  :super ros::object
  :slots (_name _lower _upper ))

(defmethod giskard_msgs::Constraint
  (:init
   (&key
    ((:name __name) "")
    ((:lower __lower) 0.0)
    ((:upper __upper) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _lower (float __lower))
   (setq _upper (float __upper))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:lower
   (&optional __lower)
   (if __lower (setq _lower __lower)) _lower)
  (:upper
   (&optional __upper)
   (if __upper (setq _upper __upper)) _upper)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _lower
    8
    ;; float64 _upper
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _lower
       (sys::poke _lower (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _upper
       (sys::poke _upper (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _lower
     (setq _lower (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _upper
     (setq _upper (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get giskard_msgs::Constraint :md5sum-) "b108bdb410bd66d771fb782664678118")
(setf (get giskard_msgs::Constraint :datatype-) "giskard_msgs/Constraint")
(setf (get giskard_msgs::Constraint :definition-)
      "# a string identifying the expression behind the constraint
string name

# desired lower and upper boundaries that shall be enforced
float64 lower
float64 upper

")



(provide :giskard_msgs/Constraint "b108bdb410bd66d771fb782664678118")


