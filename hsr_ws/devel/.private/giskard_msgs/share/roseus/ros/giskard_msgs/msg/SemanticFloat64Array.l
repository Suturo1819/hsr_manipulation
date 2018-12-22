;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::SemanticFloat64Array)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'SemanticFloat64Array (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::SEMANTICFLOAT64ARRAY")
  (make-package "GISKARD_MSGS::SEMANTICFLOAT64ARRAY"))

(in-package "ROS")
;;//! \htmlinclude SemanticFloat64Array.msg.html


(defclass giskard_msgs::SemanticFloat64Array
  :super ros::object
  :slots (_data ))

(defmethod giskard_msgs::SemanticFloat64Array
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; giskard_msgs/SemanticFloat64[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; giskard_msgs/SemanticFloat64[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; giskard_msgs/SemanticFloat64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance giskard_msgs::SemanticFloat64 :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get giskard_msgs::SemanticFloat64Array :md5sum-) "96b61963e755db3864fbf71022c3fb5f")
(setf (get giskard_msgs::SemanticFloat64Array :datatype-) "giskard_msgs/SemanticFloat64Array")
(setf (get giskard_msgs::SemanticFloat64Array :definition-)
      "# An array floating-point with semantics hint attached.
giskard_msgs/SemanticFloat64[] data

================================================================================
MSG: giskard_msgs/SemanticFloat64
# A floating-point with semantics hint attached.
# Note: I know this is not much but better than just the number. ;)

# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
string semantics
# The actual value communicated.
float64 value

")



(provide :giskard_msgs/SemanticFloat64Array "96b61963e755db3864fbf71022c3fb5f")


