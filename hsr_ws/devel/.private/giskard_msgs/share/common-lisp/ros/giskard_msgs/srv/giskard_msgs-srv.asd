
(cl:in-package :asdf)

(defsystem "giskard_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :giskard_msgs-msg
)
  :components ((:file "_package")
    (:file "QueryMotion" :depends-on ("_package_QueryMotion"))
    (:file "_package_QueryMotion" :depends-on ("_package"))
    (:file "SetEnable" :depends-on ("_package_SetEnable"))
    (:file "_package_SetEnable" :depends-on ("_package"))
    (:file "UpdateWorld" :depends-on ("_package_UpdateWorld"))
    (:file "_package_UpdateWorld" :depends-on ("_package"))
  ))