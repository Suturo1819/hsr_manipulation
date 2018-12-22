;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::Finished)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'Finished (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::FINISHED")
  (make-package "GISKARD_MSGS::FINISHED"))

(in-package "ROS")
;;//! \htmlinclude Finished.msg.html


(defclass giskard_msgs::Finished
  :super ros::object
  :slots ())

(defmethod giskard_msgs::Finished
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

(setf (get giskard_msgs::Finished :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get giskard_msgs::Finished :datatype-) "giskard_msgs/Finished")
(setf (get giskard_msgs::Finished :definition-)
      "
")



(provide :giskard_msgs/Finished "d41d8cd98f00b204e9800998ecf8427e")


