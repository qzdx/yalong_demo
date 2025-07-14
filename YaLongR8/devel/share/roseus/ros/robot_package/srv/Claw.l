;; Auto-generated. Do not edit!


(when (boundp 'robot_package::Claw)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'Claw (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::CLAW")
  (make-package "ROBOT_PACKAGE::CLAW"))
(unless (find-package "ROBOT_PACKAGE::CLAWREQUEST")
  (make-package "ROBOT_PACKAGE::CLAWREQUEST"))
(unless (find-package "ROBOT_PACKAGE::CLAWRESPONSE")
  (make-package "ROBOT_PACKAGE::CLAWRESPONSE"))

(in-package "ROS")





(defclass robot_package::ClawRequest
  :super ros::object
  :slots (_arm_index _clawState ))

(defmethod robot_package::ClawRequest
  (:init
   (&key
    ((:arm_index __arm_index) 0)
    ((:clawState __clawState) nil)
    )
   (send-super :init)
   (setq _arm_index (round __arm_index))
   (setq _clawState __clawState)
   self)
  (:arm_index
   (&optional __arm_index)
   (if __arm_index (setq _arm_index __arm_index)) _arm_index)
  (:clawState
   (&optional __clawState)
   (if __clawState (setq _clawState __clawState)) _clawState)
  (:serialization-length
   ()
   (+
    ;; int8 _arm_index
    1
    ;; bool _clawState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _arm_index
       (write-byte _arm_index s)
     ;; bool _clawState
       (if _clawState (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _arm_index
     (setq _arm_index (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _arm_index 127) (setq _arm_index (- _arm_index 256)))
   ;; bool _clawState
     (setq _clawState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_package::ClawResponse
  :super ros::object
  :slots (_result _strRt ))

(defmethod robot_package::ClawResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:strRt __strRt) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _strRt (string __strRt))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:strRt
   (&optional __strRt)
   (if __strRt (setq _strRt __strRt)) _strRt)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _strRt
    4 (length _strRt)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _strRt
       (write-long (length _strRt) s) (princ _strRt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _strRt
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _strRt (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_package::Claw
  :super ros::object
  :slots ())

(setf (get robot_package::Claw :md5sum-) "e74a584008af7a48800c53c1a71e78cb")
(setf (get robot_package::Claw :datatype-) "robot_package/Claw")
(setf (get robot_package::Claw :request) robot_package::ClawRequest)
(setf (get robot_package::Claw :response) robot_package::ClawResponse)

(defmethod robot_package::ClawRequest
  (:response () (instance robot_package::ClawResponse :init)))

(setf (get robot_package::ClawRequest :md5sum-) "e74a584008af7a48800c53c1a71e78cb")
(setf (get robot_package::ClawRequest :datatype-) "robot_package/ClawRequest")
(setf (get robot_package::ClawRequest :definition-)
      "int8 arm_index
bool clawState

---
int32 result
string strRt
")

(setf (get robot_package::ClawResponse :md5sum-) "e74a584008af7a48800c53c1a71e78cb")
(setf (get robot_package::ClawResponse :datatype-) "robot_package/ClawResponse")
(setf (get robot_package::ClawResponse :definition-)
      "int8 arm_index
bool clawState

---
int32 result
string strRt
")



(provide :robot_package/Claw "e74a584008af7a48800c53c1a71e78cb")


