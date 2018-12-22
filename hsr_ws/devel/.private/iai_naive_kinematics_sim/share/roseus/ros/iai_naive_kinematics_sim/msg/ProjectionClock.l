;; Auto-generated. Do not edit!


(when (boundp 'iai_naive_kinematics_sim::ProjectionClock)
  (if (not (find-package "IAI_NAIVE_KINEMATICS_SIM"))
    (make-package "IAI_NAIVE_KINEMATICS_SIM"))
  (shadow 'ProjectionClock (find-package "IAI_NAIVE_KINEMATICS_SIM")))
(unless (find-package "IAI_NAIVE_KINEMATICS_SIM::PROJECTIONCLOCK")
  (make-package "IAI_NAIVE_KINEMATICS_SIM::PROJECTIONCLOCK"))

(in-package "ROS")
;;//! \htmlinclude ProjectionClock.msg.html


(defclass iai_naive_kinematics_sim::ProjectionClock
  :super ros::object
  :slots (_now _period ))

(defmethod iai_naive_kinematics_sim::ProjectionClock
  (:init
   (&key
    ((:now __now) (instance ros::time :init))
    ((:period __period) (instance ros::time :init))
    )
   (send-super :init)
   (setq _now __now)
   (setq _period __period)
   self)
  (:now
   (&optional __now)
   (if __now (setq _now __now)) _now)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:serialization-length
   ()
   (+
    ;; time _now
    8
    ;; duration _period
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _now
       (write-long (send _now :sec) s) (write-long (send _now :nsec) s)
     ;; duration _period
       (write-long (send _period :sec) s) (write-long (send _period :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _now
     (send _now :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _now :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _period
     (send _period :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _period :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iai_naive_kinematics_sim::ProjectionClock :md5sum-) "118d0ba873954aeb07014f682079aa06")
(setf (get iai_naive_kinematics_sim::ProjectionClock :datatype-) "iai_naive_kinematics_sim/ProjectionClock")
(setf (get iai_naive_kinematics_sim::ProjectionClock :definition-)
      "# ProjectionClock messages are used to synchronously advance the clock
# of a set of nodes that provide distributed projection capabilities.
# The original intention was to have it published by a central projection
# management node that acts as a sort of pace-maker for the projection.

time now         # time equivalent to ros::Time::now(), used to stamp data
duration period  # duration between clock signals, used to advance projections

")



(provide :iai_naive_kinematics_sim/ProjectionClock "118d0ba873954aeb07014f682079aa06")


