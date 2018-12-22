;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::SemanticBool)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'SemanticBool (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::SEMANTICBOOL")
  (make-package "GISKARD_MSGS::SEMANTICBOOL"))

(in-package "ROS")
;;//! \htmlinclude SemanticBool.msg.html


(defclass giskard_msgs::SemanticBool
  :super ros::object
  :slots (_semantics _value ))

(defmethod giskard_msgs::SemanticBool
  (:init
   (&key
    ((:semantics __semantics) "")
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _semantics (string __semantics))
   (setq _value __value)
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
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _semantics
       (write-long (length _semantics) s) (princ _semantics s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _semantics
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _semantics (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get giskard_msgs::SemanticBool :md5sum-) "5b2f92c216bbfd6638af0bfc9228a3e0")
(setf (get giskard_msgs::SemanticBool :datatype-) "giskard_msgs/SemanticBool")
(setf (get giskard_msgs::SemanticBool :definition-)
      "# A bool with semantics hint attached.
# Note: I know this is not much but better than just the bool. ;)

# Hint about the semantics of this number. Examples: frame_id, joint-name, or task dimension.
string semantics
# The actual value communicated.
bool value

")



(provide :giskard_msgs/SemanticBool "5b2f92c216bbfd6638af0bfc9228a3e0")


