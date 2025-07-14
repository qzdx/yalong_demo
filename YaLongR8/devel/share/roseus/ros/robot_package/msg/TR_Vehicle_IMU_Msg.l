;; Auto-generated. Do not edit!


(when (boundp 'robot_package::TR_Vehicle_IMU_Msg)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'TR_Vehicle_IMU_Msg (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::TR_VEHICLE_IMU_MSG")
  (make-package "ROBOT_PACKAGE::TR_VEHICLE_IMU_MSG"))

(in-package "ROS")
;;//! \htmlinclude TR_Vehicle_IMU_Msg.msg.html


(defclass robot_package::TR_Vehicle_IMU_Msg
  :super ros::object
  :slots (_ppsSyncStamp _temprature _pressure _timestamp _acc _gyr _mag _eul _quat ))

(defmethod robot_package::TR_Vehicle_IMU_Msg
  (:init
   (&key
    ((:ppsSyncStamp __ppsSyncStamp) 0)
    ((:temprature __temprature) 0)
    ((:pressure __pressure) 0.0)
    ((:timestamp __timestamp) 0)
    ((:acc __acc) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gyr __gyr) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mag __mag) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:eul __eul) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:quat __quat) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _ppsSyncStamp (round __ppsSyncStamp))
   (setq _temprature (round __temprature))
   (setq _pressure (float __pressure))
   (setq _timestamp (round __timestamp))
   (setq _acc __acc)
   (setq _gyr __gyr)
   (setq _mag __mag)
   (setq _eul __eul)
   (setq _quat __quat)
   self)
  (:ppsSyncStamp
   (&optional __ppsSyncStamp)
   (if __ppsSyncStamp (setq _ppsSyncStamp __ppsSyncStamp)) _ppsSyncStamp)
  (:temprature
   (&optional __temprature)
   (if __temprature (setq _temprature __temprature)) _temprature)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:gyr
   (&optional __gyr)
   (if __gyr (setq _gyr __gyr)) _gyr)
  (:mag
   (&optional __mag)
   (if __mag (setq _mag __mag)) _mag)
  (:eul
   (&optional __eul)
   (if __eul (setq _eul __eul)) _eul)
  (:quat
   (&optional __quat)
   (if __quat (setq _quat __quat)) _quat)
  (:serialization-length
   ()
   (+
    ;; int16 _ppsSyncStamp
    2
    ;; int8 _temprature
    1
    ;; float32 _pressure
    4
    ;; uint32 _timestamp
    4
    ;; float32[] _acc
    (* 4    (length _acc)) 4
    ;; float32[] _gyr
    (* 4    (length _gyr)) 4
    ;; float32[] _mag
    (* 4    (length _mag)) 4
    ;; float32[] _eul
    (* 4    (length _eul)) 4
    ;; float32[] _quat
    (* 4    (length _quat)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _ppsSyncStamp
       (write-word _ppsSyncStamp s)
     ;; int8 _temprature
       (write-byte _temprature s)
     ;; float32 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _timestamp
       (write-long _timestamp s)
     ;; float32[] _acc
     (write-long (length _acc) s)
     (dotimes (i (length _acc))
       (sys::poke (elt _acc i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _gyr
     (write-long (length _gyr) s)
     (dotimes (i (length _gyr))
       (sys::poke (elt _gyr i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _mag
     (write-long (length _mag) s)
     (dotimes (i (length _mag))
       (sys::poke (elt _mag i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _eul
     (write-long (length _eul) s)
     (dotimes (i (length _eul))
       (sys::poke (elt _eul i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _quat
     (write-long (length _quat) s)
     (dotimes (i (length _quat))
       (sys::poke (elt _quat i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _ppsSyncStamp
     (setq _ppsSyncStamp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _temprature
     (setq _temprature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _temprature 127) (setq _temprature (- _temprature 256)))
   ;; float32 _pressure
     (setq _pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _timestamp
     (setq _timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _acc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _gyr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gyr (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gyr i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _mag
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mag (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mag i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _eul
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _eul (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _eul i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _quat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _quat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _quat i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robot_package::TR_Vehicle_IMU_Msg :md5sum-) "f5a5798f0264f71a56bc6105bff0acc0")
(setf (get robot_package::TR_Vehicle_IMU_Msg :datatype-) "robot_package/TR_Vehicle_IMU_Msg")
(setf (get robot_package::TR_Vehicle_IMU_Msg :definition-)
      "
    int16 ppsSyncStamp
    int8 temprature
    float32 pressure
    uint32 timestamp
    float32[] acc
    float32[] gyr
    float32[] mag
    float32[] eul
    float32[] quat
")



(provide :robot_package/TR_Vehicle_IMU_Msg "f5a5798f0264f71a56bc6105bff0acc0")


