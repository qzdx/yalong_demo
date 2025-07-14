;; Auto-generated. Do not edit!


(when (boundp 'robot_package::Servo)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'Servo (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::SERVO")
  (make-package "ROBOT_PACKAGE::SERVO"))
(unless (find-package "ROBOT_PACKAGE::SERVOREQUEST")
  (make-package "ROBOT_PACKAGE::SERVOREQUEST"))
(unless (find-package "ROBOT_PACKAGE::SERVORESPONSE")
  (make-package "ROBOT_PACKAGE::SERVORESPONSE"))

(in-package "ROS")





(defclass robot_package::ServoRequest
  :super ros::object
  :slots (_arm_index _servoState ))

(defmethod robot_package::ServoRequest
  (:init
   (&key
    ((:arm_index __arm_index) 0)
    ((:servoState __servoState) nil)
    )
   (send-super :init)
   (setq _arm_index (round __arm_index))
   (setq _servoState __servoState)
   self)
  (:arm_index
   (&optional __arm_index)
   (if __arm_index (setq _arm_index __arm_index)) _arm_index)
  (:servoState
   (&optional __servoState)
   (if __servoState (setq _servoState __servoState)) _servoState)
  (:serialization-length
   ()
   (+
    ;; int8 _arm_index
    1
    ;; bool _servoState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _arm_index
       (write-byte _arm_index s)
     ;; bool _servoState
       (if _servoState (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _arm_index
     (setq _arm_index (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _arm_index 127) (setq _arm_index (- _arm_index 256)))
   ;; bool _servoState
     (setq _servoState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_package::ServoResponse
  :super ros::object
  :slots (_result _strRt ))

(defmethod robot_package::ServoResponse
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

(defclass robot_package::Servo
  :super ros::object
  :slots ())

(setf (get robot_package::Servo :md5sum-) "b15f459093083ca0158fd62e9d4b9e1d")
(setf (get robot_package::Servo :datatype-) "robot_package/Servo")
(setf (get robot_package::Servo :request) robot_package::ServoRequest)
(setf (get robot_package::Servo :response) robot_package::ServoResponse)

(defmethod robot_package::ServoRequest
  (:response () (instance robot_package::ServoResponse :init)))

(setf (get robot_package::ServoRequest :md5sum-) "b15f459093083ca0158fd62e9d4b9e1d")
(setf (get robot_package::ServoRequest :datatype-) "robot_package/ServoRequest")
(setf (get robot_package::ServoRequest :definition-)
      "int8 arm_index
bool servoState

---
int32 result
string strRt
")

(setf (get robot_package::ServoResponse :md5sum-) "b15f459093083ca0158fd62e9d4b9e1d")
(setf (get robot_package::ServoResponse :datatype-) "robot_package/ServoResponse")
(setf (get robot_package::ServoResponse :definition-)
      "int8 arm_index
bool servoState

---
int32 result
string strRt
")



(provide :robot_package/Servo "b15f459093083ca0158fd62e9d4b9e1d")


