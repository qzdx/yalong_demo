;; Auto-generated. Do not edit!


(when (boundp 'robot_package::TR_Vehicle_Msg)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'TR_Vehicle_Msg (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::TR_VEHICLE_MSG")
  (make-package "ROBOT_PACKAGE::TR_VEHICLE_MSG"))

(in-package "ROS")
;;//! \htmlinclude TR_Vehicle_Msg.msg.html


(defclass robot_package::TR_Vehicle_Msg
  :super ros::object
  :slots (_vehicleServoState _vehicle_x_vel _vehicle_y_vel _vehicle_z_vel _wheelVel _servoPos _sonar ))

(defmethod robot_package::TR_Vehicle_Msg
  (:init
   (&key
    ((:vehicleServoState __vehicleServoState) 0)
    ((:vehicle_x_vel __vehicle_x_vel) 0.0)
    ((:vehicle_y_vel __vehicle_y_vel) 0.0)
    ((:vehicle_z_vel __vehicle_z_vel) 0.0)
    ((:wheelVel __wheelVel) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:servoPos __servoPos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sonar __sonar) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _vehicleServoState (round __vehicleServoState))
   (setq _vehicle_x_vel (float __vehicle_x_vel))
   (setq _vehicle_y_vel (float __vehicle_y_vel))
   (setq _vehicle_z_vel (float __vehicle_z_vel))
   (setq _wheelVel __wheelVel)
   (setq _servoPos __servoPos)
   (setq _sonar __sonar)
   self)
  (:vehicleServoState
   (&optional __vehicleServoState)
   (if __vehicleServoState (setq _vehicleServoState __vehicleServoState)) _vehicleServoState)
  (:vehicle_x_vel
   (&optional __vehicle_x_vel)
   (if __vehicle_x_vel (setq _vehicle_x_vel __vehicle_x_vel)) _vehicle_x_vel)
  (:vehicle_y_vel
   (&optional __vehicle_y_vel)
   (if __vehicle_y_vel (setq _vehicle_y_vel __vehicle_y_vel)) _vehicle_y_vel)
  (:vehicle_z_vel
   (&optional __vehicle_z_vel)
   (if __vehicle_z_vel (setq _vehicle_z_vel __vehicle_z_vel)) _vehicle_z_vel)
  (:wheelVel
   (&optional __wheelVel)
   (if __wheelVel (setq _wheelVel __wheelVel)) _wheelVel)
  (:servoPos
   (&optional __servoPos)
   (if __servoPos (setq _servoPos __servoPos)) _servoPos)
  (:sonar
   (&optional __sonar)
   (if __sonar (setq _sonar __sonar)) _sonar)
  (:serialization-length
   ()
   (+
    ;; int32 _vehicleServoState
    4
    ;; float32 _vehicle_x_vel
    4
    ;; float32 _vehicle_y_vel
    4
    ;; float32 _vehicle_z_vel
    4
    ;; float32[] _wheelVel
    (* 4    (length _wheelVel)) 4
    ;; float32[] _servoPos
    (* 4    (length _servoPos)) 4
    ;; int8[] _sonar
    (* 1    (length _sonar)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _vehicleServoState
       (write-long _vehicleServoState s)
     ;; float32 _vehicle_x_vel
       (sys::poke _vehicle_x_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vehicle_y_vel
       (sys::poke _vehicle_y_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vehicle_z_vel
       (sys::poke _vehicle_z_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _wheelVel
     (write-long (length _wheelVel) s)
     (dotimes (i (length _wheelVel))
       (sys::poke (elt _wheelVel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _servoPos
     (write-long (length _servoPos) s)
     (dotimes (i (length _servoPos))
       (sys::poke (elt _servoPos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int8[] _sonar
     (write-long (length _sonar) s)
     (dotimes (i (length _sonar))
       (write-byte (elt _sonar i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _vehicleServoState
     (setq _vehicleServoState (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _vehicle_x_vel
     (setq _vehicle_x_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vehicle_y_vel
     (setq _vehicle_y_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vehicle_z_vel
     (setq _vehicle_z_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _wheelVel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheelVel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheelVel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _servoPos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servoPos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _servoPos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int8[] _sonar
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sonar (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sonar i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _sonar i) 127) (setf (elt _sonar i) (- (elt _sonar i) 256)))
     ))
   ;;
   self)
  )

(setf (get robot_package::TR_Vehicle_Msg :md5sum-) "7c1c171ba287db99c1eb25bb64fd0b2f")
(setf (get robot_package::TR_Vehicle_Msg :datatype-) "robot_package/TR_Vehicle_Msg")
(setf (get robot_package::TR_Vehicle_Msg :definition-)
      "int32 vehicleServoState
float32 vehicle_x_vel                            # mm/s
float32 vehicle_y_vel                            # mm/s
float32 vehicle_z_vel                            # rad/s

float32[] wheelVel                              # rad/s
float32[] servoPos                              # rad

int8[] sonar            
")



(provide :robot_package/TR_Vehicle_Msg "7c1c171ba287db99c1eb25bb64fd0b2f")


