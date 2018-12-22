;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::SemanticFloat64)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'SemanticFloat64 (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::SEMANTICFLOAT64")
  (make-package "GISKARD_MSGS::SEMANTICFLOAT64"))

(in-package "ROS")
;;//! \htmlinclude SemanticFloat64.msg.html


(defclass giskard_msgs::SemanticFloat64
  :super ros::object
  :slots (_semantics _value ))

(defmethod giskard_msgs::SemanticFloat64
  (:init
   (&key
    ((:semantics __semantics) "")
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _semantics (string __semantics))
   (setq _value (float __value))
   self)
  (:semantics
   (&optional __semantics)
   (if __semantics (setq _semantics __semantics)) _semantics)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _semantics
    4 (length _semantics)
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _semantics
       (write-long (length _semantics) s) (princ _semantics s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _semantics
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _semantics (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get giskard_msgs::SemanticFloat64 :md5sum-) "e4a58ae766646c1b94adf962a4b9641b")
(setf (get giskard_msgs::SemanticFloat64 :datatype-) "giskard_msgs/SemanticFloat64")
(setf (get giskard_msgs::SemanticFloat64 :definition-)
      "# A floating-point with semantics hint attached.
# Note: I know this is not much but better than just the number. ;)

# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
string semantics
# The actual value communicated.
float64 value

")



(provide :giskard_msgs/SemanticFloat64 "e4a58ae766646c1b94adf962a4b9641b")


