
(cl:in-package :asdf)

(defsystem "iai_naive_kinematics_sim-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "SetJointState" :depends-on ("_package_SetJointState"))
    (:file "_package_SetJointState" :depends-on ("_package"))
  ))