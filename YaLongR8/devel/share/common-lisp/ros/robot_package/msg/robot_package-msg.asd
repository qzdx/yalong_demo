
(cl:in-package :asdf)

(defsystem "robot_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MoveABSJAction" :depends-on ("_package_MoveABSJAction"))
    (:file "_package_MoveABSJAction" :depends-on ("_package"))
    (:file "MoveABSJActionFeedback" :depends-on ("_package_MoveABSJActionFeedback"))
    (:file "_package_MoveABSJActionFeedback" :depends-on ("_package"))
    (:file "MoveABSJActionGoal" :depends-on ("_package_MoveABSJActionGoal"))
    (:file "_package_MoveABSJActionGoal" :depends-on ("_package"))
    (:file "MoveABSJActionResult" :depends-on ("_package_MoveABSJActionResult"))
    (:file "_package_MoveABSJActionResult" :depends-on ("_package"))
    (:file "MoveABSJFeedback" :depends-on ("_package_MoveABSJFeedback"))
    (:file "_package_MoveABSJFeedback" :depends-on ("_package"))
    (:file "MoveABSJGoal" :depends-on ("_package_MoveABSJGoal"))
    (:file "_package_MoveABSJGoal" :depends-on ("_package"))
    (:file "MoveABSJResult" :depends-on ("_package_MoveABSJResult"))
    (:file "_package_MoveABSJResult" :depends-on ("_package"))
    (:file "TR_Arm_Msg" :depends-on ("_package_TR_Arm_Msg"))
    (:file "_package_TR_Arm_Msg" :depends-on ("_package"))
    (:file "TR_Vehicle_IMU_Msg" :depends-on ("_package_TR_Vehicle_IMU_Msg"))
    (:file "_package_TR_Vehicle_IMU_Msg" :depends-on ("_package"))
    (:file "TR_Vehicle_Msg" :depends-on ("_package_TR_Vehicle_Msg"))
    (:file "_package_TR_Vehicle_Msg" :depends-on ("_package"))
  ))