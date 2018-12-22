
(cl:in-package :asdf)

(defsystem "iai_naive_kinematics_sim-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ProjectionClock" :depends-on ("_package_ProjectionClock"))
    (:file "_package_ProjectionClock" :depends-on ("_package"))
  ))