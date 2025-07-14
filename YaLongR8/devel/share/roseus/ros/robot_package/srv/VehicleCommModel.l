;; Auto-generated. Do not edit!


(when (boundp 'robot_package::VehicleCommModel)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'VehicleCommModel (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::VEHICLECOMMMODEL")
  (make-package "ROBOT_PACKAGE::VEHICLECOMMMODEL"))
(unless (find-package "ROBOT_PACKAGE::VEHICLECOMMMODELREQUEST")
  (make-package "ROBOT_PACKAGE::VEHICLECOMMMODELREQUEST"))
(unless (find-package "ROBOT_PACKAGE::VEHICLECOMMMODELRESPONSE")
  (make-package "ROBOT_PACKAGE::VEHICLECOMMMODELRESPONSE"))

(in-package "ROS")





(defclass robot_package::VehicleCommModelRequest
  :super ros::object
  :slots (_model ))

(defmethod robot_package::VehicleCommModelRequest
  (:init
   (&key
    ((:model __model) 0)
    )
   (send-super :init)
   (setq _model (round __model))
   self)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:serialization-length
   ()
   (+
    ;; int8 _model
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _model
       (write-byte _model s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _model
     (setq _model (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _model 127) (setq _model (- _model 256)))
   ;;
   self)
  )

(defclass robot_package::VehicleCommModelResponse
  :super ros::object
  :slots (_result ))

(defmethod robot_package::VehicleCommModelResponse
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

(defclass robot_package::VehicleCommModel
  :super ros::object
  :slots ())

(setf (get robot_package::VehicleCommModel :md5sum-) "e14465039f2205faa968203b38699079")
(setf (get robot_package::VehicleCommModel :datatype-) "robot_package/VehicleCommModel")
(setf (get robot_package::VehicleCommModel :request) robot_package::VehicleCommModelRequest)
(setf (get robot_package::VehicleCommModel :response) robot_package::VehicleCommModelResponse)

(defmethod robot_package::VehicleCommModelRequest
  (:response () (instance robot_package::VehicleCommModelResponse :init)))

(setf (get robot_package::VehicleCommModelRequest :md5sum-) "e14465039f2205faa968203b38699079")
(setf (get robot_package::VehicleCommModelRequest :datatype-) "robot_package/VehicleCommModelRequest")
(setf (get robot_package::VehicleCommModelRequest :definition-)
      "int8 model
 
---
int32 result
")

(setf (get robot_package::VehicleCommModelResponse :md5sum-) "e14465039f2205faa968203b38699079")
(setf (get robot_package::VehicleCommModelResponse :datatype-) "robot_package/VehicleCommModelResponse")
(setf (get robot_package::VehicleCommModelResponse :definition-)
      "int8 model
 
---
int32 result
")



(provide :robot_package/VehicleCommModel "e14465039f2205faa968203b38699079")


