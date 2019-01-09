;; Auto-generated. Do not edit!


(when (boundp 'giskard_msgs::ControllerListResult)
  (if (not (find-package "GISKARD_MSGS"))
    (make-package "GISKARD_MSGS"))
  (shadow 'ControllerListResult (find-package "GISKARD_MSGS")))
(unless (find-package "GISKARD_MSGS::CONTROLLERLISTRESULT")
  (make-package "GISKARD_MSGS::CONTROLLERLISTRESULT"))

(in-package "ROS")
;;//! \htmlinclude ControllerListResult.msg.html


(defclass giskard_msgs::ControllerListResult
  :super ros::object
  :slots (_success _error_message ))

(defmethod giskard_msgs::ControllerListResult
  (:init
   (&key
    ((:success __success) nil)
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_message (string __error_message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get giskard_msgs::ControllerListResult :md5sum-) "6fe914479ce03184a758c3f6990c928f")
(setf (get giskard_msgs::ControllerListResult :datatype-) "giskard_msgs/ControllerListResult")
(setf (get giskard_msgs::ControllerListResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# result message

# set to true iff generation and execution of all controllers was successful
bool success
# reports an message if unsuccessful, typically the message from an internal exception
string error_message

")



(provide :giskard_msgs/ControllerListResult "6fe914479ce03184a758c3f6990c928f")

