;; Auto-generated. Do not edit!


(when (boundp 'robot_package::VehicleControl)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'VehicleControl (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::VEHICLECONTROL")
  (make-package "ROBOT_PACKAGE::VEHICLECONTROL"))
(unless (find-package "ROBOT_PACKAGE::VEHICLECONTROLREQUEST")
  (make-package "ROBOT_PACKAGE::VEHICLECONTROLREQUEST"))
(unless (find-package "ROBOT_PACKAGE::VEHICLECONTROLRESPONSE")
  (make-package "ROBOT_PACKAGE::VEHICLECONTROLRESPONSE"))

(in-package "ROS")





(defclass robot_package::VehicleControlRequest
  :super ros::object
  :slots (_mode _vehicle_x_vel _vehicle_y_vel _vehicle_z_vel ))

(defmethod robot_package::VehicleControlRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:vehicle_x_vel __vehicle_x_vel) 0.0)
    ((:vehicle_y_vel __vehicle_y_vel) 0.0)
    ((:vehicle_z_vel __vehicle_z_vel) 0.0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _vehicle_x_vel (float __vehicle_x_vel))
   (setq _vehicle_y_vel (float __vehicle_y_vel))
   (setq _vehicle_z_vel (float __vehicle_z_vel))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:vehicle_x_vel
   (&optional __vehicle_x_vel)
   (if __vehicle_x_vel (setq _vehicle_x_vel __vehicle_x_vel)) _vehicle_x_vel)
  (:vehicle_y_vel
   (&optional __vehicle_y_vel)
   (if __vehicle_y_vel (setq _vehicle_y_vel __vehicle_y_vel)) _vehicle_y_vel)
  (:vehicle_z_vel
   (&optional __vehicle_z_vel)
   (if __vehicle_z_vel (setq _vehicle_z_vel __vehicle_z_vel)) _vehicle_z_vel)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ;; float32 _vehicle_x_vel
    4
    ;; float32 _vehicle_y_vel
    4
    ;; float32 _vehicle_z_vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;; float32 _vehicle_x_vel
       (sys::poke _vehicle_x_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vehicle_y_vel
       (sys::poke _vehicle_y_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vehicle_z_vel
       (sys::poke _vehicle_z_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _vehicle_x_vel
     (setq _vehicle_x_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vehicle_y_vel
     (setq _vehicle_y_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vehicle_z_vel
     (setq _vehicle_z_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_package::VehicleControlResponse
  :super ros::object
  :slots (_result ))

(defmethod robot_package::VehicleControlResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_package::VehicleControl
  :super ros::object
  :slots ())

(setf (get robot_package::VehicleControl :md5sum-) "32b3b53d0e476262a13481b20e7b9bb8")
(setf (get robot_package::VehicleControl :datatype-) "robot_package/VehicleControl")
(setf (get robot_package::VehicleControl :request) robot_package::VehicleControlRequest)
(setf (get robot_package::VehicleControl :response) robot_package::VehicleControlResponse)

(defmethod robot_package::VehicleControlRequest
  (:response () (instance robot_package::VehicleControlResponse :init)))

(setf (get robot_package::VehicleControlRequest :md5sum-) "32b3b53d0e476262a13481b20e7b9bb8")
(setf (get robot_package::VehicleControlRequest :datatype-) "robot_package/VehicleControlRequest")
(setf (get robot_package::VehicleControlRequest :definition-)
      "int32 mode
float32 vehicle_x_vel
float32 vehicle_y_vel
float32 vehicle_z_vel
---
int32 result
")

(setf (get robot_package::VehicleControlResponse :md5sum-) "32b3b53d0e476262a13481b20e7b9bb8")
(setf (get robot_package::VehicleControlResponse :datatype-) "robot_package/VehicleControlResponse")
(setf (get robot_package::VehicleControlResponse :definition-)
      "int32 mode
float32 vehicle_x_vel
float32 vehicle_y_vel
float32 vehicle_z_vel
---
int32 result
")



(provide :robot_package/VehicleControl "32b3b53d0e476262a13481b20e7b9bb8")


