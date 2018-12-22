
(cl:in-package :asdf)

(defsystem "move-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DoMoveAction" :depends-on ("_package_DoMoveAction"))
    (:file "_package_DoMoveAction" :depends-on ("_package"))
    (:file "DoMoveActionFeedback" :depends-on ("_package_DoMoveActionFeedback"))
    (:file "_package_DoMoveActionFeedback" :depends-on ("_package"))
    (:file "DoMoveActionGoal" :depends-on ("_package_DoMoveActionGoal"))
    (:file "_package_DoMoveActionGoal" :depends-on ("_package"))
    (:file "DoMoveActionResult" :depends-on ("_package_DoMoveActionResult"))
    (:file "_package_DoMoveActionResult" :depends-on ("_package"))
    (:file "DoMoveFeedback" :depends-on ("_package_DoMoveFeedback"))
    (:file "_package_DoMoveFeedback" :depends-on ("_package"))
    (:file "DoMoveGoal" :depends-on ("_package_DoMoveGoal"))
    (:file "_package_DoMoveGoal" :depends-on ("_package"))
    (:file "DoMoveResult" :depends-on ("_package_DoMoveResult"))
    (:file "_package_DoMoveResult" :depends-on ("_package"))
  ))