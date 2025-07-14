;; Auto-generated. Do not edit!


(when (boundp 'robot_package::VehicleServo)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'VehicleServo (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::VEHICLESERVO")
  (make-package "ROBOT_PACKAGE::VEHICLESERVO"))
(unless (find-package "ROBOT_PACKAGE::VEHICLESERVOREQUEST")
  (make-package "ROBOT_PACKAGE::VEHICLESERVOREQUEST"))
(unless (find-package "ROBOT_PACKAGE::VEHICLESERVORESPONSE")
  (make-package "ROBOT_PACKAGE::VEHICLESERVORESPONSE"))

(in-package "ROS")





(defclass robot_package::VehicleServoRequest
  :super ros::object
  :slots (_servoState ))

(defmethod robot_package::VehicleServoRequest
  (:init
   (&key
    ((:servoState __servoState) nil)
    )
   (send-super :init)
   (setq _servoState __servoState)
   self)
  (:servoState
   (&optional __servoState)
   (if __servoState (setq _servoState __servoState)) _servoState)
  (:serialization-length
   ()
   (+
    ;; bool _servoState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _servoState
       (if _servoState (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _servoState
     (setq _servoState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_package::VehicleServoResponse
  :super ros::object
  :slots (_result _strRt ))

(defmethod robot_package::VehicleServoResponse
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

(defclass robot_package::VehicleServo
  :super ros::object
  :slots ())

(setf (get robot_package::VehicleServo :md5sum-) "27e94be142d556e1a0d52326b0de189d")
(setf (get robot_package::VehicleServo :datatype-) "robot_package/VehicleServo")
(setf (get robot_package::VehicleServo :request) robot_package::VehicleServoRequest)
(setf (get robot_package::VehicleServo :response) robot_package::VehicleServoResponse)

(defmethod robot_package::VehicleServoRequest
  (:response () (instance robot_package::VehicleServoResponse :init)))

(setf (get robot_package::VehicleServoRequest :md5sum-) "27e94be142d556e1a0d52326b0de189d")
(setf (get robot_package::VehicleServoRequest :datatype-) "robot_package/VehicleServoRequest")
(setf (get robot_package::VehicleServoRequest :definition-)
      "bool servoState
---
int32 result
string strRt
")

(setf (get robot_package::VehicleServoResponse :md5sum-) "27e94be142d556e1a0d52326b0de189d")
(setf (get robot_package::VehicleServoResponse :datatype-) "robot_package/VehicleServoResponse")
(setf (get robot_package::VehicleServoResponse :definition-)
      "bool servoState
---
int32 result
string strRt
")



(provide :robot_package/VehicleServo "27e94be142d556e1a0d52326b0de189d")


