;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::SemanticVector3)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'SemanticVector3 (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::SEMANTICVECTOR3")
  (make-package "GISKARD_MSGS::SEMANTICVECTOR3"))

(in-package "ROS")
;;//! \htmlinclude SemanticVector3.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass giskard_msgs::SemanticVector3
  :super ros::object
  :slots (_semantics _value ))

(defmethod giskard_msgs::SemanticVector3
  (:init
   (&key
    ((:semantics __semantics) "")
    ((:value __value) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _semantics (string __semantics))
   (setq _value __value)
   self)
  (:semantics
   (&optional __semantics)
   (if __semantics (setq _semantics __semantics)) _semantics)
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:serialization-length
   ()
   (+
    ;; string _semantics
    4 (length _semantics)
    ;; geometry_msgs/Vector3 _value
    (send _value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _semantics
       (write-long (length _semantics) s) (princ _semantics s)
     ;; geometry_msgs/Vector3 _value
       (send _value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _semantics
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _semantics (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;;
   self)
  )

(setf (get giskard_msgs::SemanticVector3 :md5sum-) "c66c67f1caae2f292daae03f1eb49dc2")
(setf (get giskard_msgs::SemanticVector3 :datatype-) "giskard_msgs/SemanticVector3")
(setf (get giskard_msgs::SemanticVector3 :definition-)
      "# A 3d vector with semantics hint attached.
# Note: I know this is not much but better than just the number. ;)

# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
string semantics
# The actual value communicated.
geometry_msgs/Vector3 value

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :giskard_msgs/SemanticVector3 "c66c67f1caae2f292daae03f1eb49dc2")


