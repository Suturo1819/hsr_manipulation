;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::Dummy)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'Dummy (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::DUMMY")
  (make-package "GISKARD_MSGS::DUMMY"))

(in-package "ROS")
;;//! \htmlinclude Dummy.msg.html


(defclass giskard_msgs::Dummy
  :super ros::object
  :slots ())

(defmethod giskard_msgs::Dummy
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get giskard_msgs::Dummy :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get giskard_msgs::Dummy :datatype-) "giskard_msgs/Dummy")
(setf (get giskard_msgs::Dummy :definition-)
      "
")



(provide :giskard_msgs/Dummy "d41d8cd98f00b204e9800998ecf8427e")


