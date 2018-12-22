;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::SetEnable)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'SetEnable (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::SETENABLE")
  (make-package "GISKARD_MSGS::SETENABLE"))
(unless (find-package "GISKARD_MSGS::SETENABLEREQUEST")
  (make-package "GISKARD_MSGS::SETENABLEREQUEST"))
(unless (find-package "GISKARD_MSGS::SETENABLERESPONSE")
  (make-package "GISKARD_MSGS::SETENABLERESPONSE"))

(in-package "ROS")





(defclass giskard_msgs::SetEnableRequest
  :super ros::object
  :slots (_enable ))

(defmethod giskard_msgs::SetEnableRequest
  (:init
   (&key
    ((:enable __enable) 0)
    )
   (send-super :init)
   (setq _enable (round __enable))
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; int8 _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _enable
       (write-byte _enable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _enable
     (setq _enable (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _enable 127) (setq _enable (- _enable 256)))
   ;;
   self)
  )

(defclass giskard_msgs::SetEnableResponse
  :super ros::object
  :slots ())

(defmethod giskard_msgs::SetEnableResponse
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

(defclass giskard_msgs::SetEnable
  :super ros::object
  :slots ())

(setf (get giskard_msgs::SetEnable :md5sum-) "ac6526613895843e4f8f058d9ae9c5ce")
(setf (get giskard_msgs::SetEnable :datatype-) "giskard_msgs/SetEnable")
(setf (get giskard_msgs::SetEnable :request) giskard_msgs::SetEnableRequest)
(setf (get giskard_msgs::SetEnable :response) giskard_msgs::SetEnableResponse)

(defmethod giskard_msgs::SetEnableRequest
  (:response () (instance giskard_msgs::SetEnableResponse :init)))

(setf (get giskard_msgs::SetEnableRequest :md5sum-) "ac6526613895843e4f8f058d9ae9c5ce")
(setf (get giskard_msgs::SetEnableRequest :datatype-) "giskard_msgs/SetEnableRequest")
(setf (get giskard_msgs::SetEnableRequest :definition-)
      "int8 enable
---


")

(setf (get giskard_msgs::SetEnableResponse :md5sum-) "ac6526613895843e4f8f058d9ae9c5ce")
(setf (get giskard_msgs::SetEnableResponse :datatype-) "giskard_msgs/SetEnableResponse")
(setf (get giskard_msgs::SetEnableResponse :definition-)
      "int8 enable
---


")



(provide :giskard_msgs/SetEnable "ac6526613895843e4f8f058d9ae9c5ce")


