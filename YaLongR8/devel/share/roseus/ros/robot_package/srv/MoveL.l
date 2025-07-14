;; Auto-generated. Do not edit!


(when (boundp 'robot_package::MoveL)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'MoveL (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::MOVEL")
  (make-package "ROBOT_PACKAGE::MOVEL"))
(unless (find-package "ROBOT_PACKAGE::MOVELREQUEST")
  (make-package "ROBOT_PACKAGE::MOVELREQUEST"))
(unless (find-package "ROBOT_PACKAGE::MOVELRESPONSE")
  (make-package "ROBOT_PACKAGE::MOVELRESPONSE"))

(in-package "ROS")





(defclass robot_package::MoveLRequest
  :super ros::object
  :slots (_arm_index _relative _vel _terminal ))

(defmethod robot_package::MoveLRequest
  (:init
   (&key
    ((:arm_index __arm_index) 0)
    ((:relative __relative) nil)
    ((:vel __vel) 0.0)
    ((:terminal __terminal) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _arm_index (round __arm_index))
   (setq _relative __relative)
   (setq _vel (float __vel))
   (setq _terminal __terminal)
   self)
  (:arm_index
   (&optional __arm_index)
   (if __arm_index (setq _arm_index __arm_index)) _arm_index)
  (:relative
   (&optional __relative)
   (if __relative (setq _relative __relative)) _relative)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:terminal
   (&optional __terminal)
   (if __terminal (setq _terminal __terminal)) _terminal)
  (:serialization-length
   ()
   (+
    ;; int8 _arm_index
    1
    ;; bool _relative
    1
    ;; float32 _vel
    4
    ;; float32[] _terminal
    (* 4    (length _terminal)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _arm_index
       (write-byte _arm_index s)
     ;; bool _relative
       (if _relative (write-byte -1 s) (write-byte 0 s))
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _terminal
     (write-long (length _terminal) s)
     (dotimes (i (length _terminal))
       (sys::poke (elt _terminal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _arm_index
     (setq _arm_index (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _arm_index 127) (setq _arm_index (- _arm_index 256)))
   ;; bool _relative
     (setq _relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _terminal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _terminal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _terminal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass robot_package::MoveLResponse
  :super ros::object
  :slots (_result _strRt ))

(defmethod robot_package::MoveLResponse
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

(defclass robot_package::MoveL
  :super ros::object
  :slots ())

(setf (get robot_package::MoveL :md5sum-) "cb6915dd75fcbacce2cfbc55a90a7b92")
(setf (get robot_package::MoveL :datatype-) "robot_package/MoveL")
(setf (get robot_package::MoveL :request) robot_package::MoveLRequest)
(setf (get robot_package::MoveL :response) robot_package::MoveLResponse)

(defmethod robot_package::MoveLRequest
  (:response () (instance robot_package::MoveLResponse :init)))

(setf (get robot_package::MoveLRequest :md5sum-) "cb6915dd75fcbacce2cfbc55a90a7b92")
(setf (get robot_package::MoveLRequest :datatype-) "robot_package/MoveLRequest")
(setf (get robot_package::MoveLRequest :definition-)
      "int8 arm_index
bool relative
float32 vel
float32[] terminal
---
int32 result
string strRt
")

(setf (get robot_package::MoveLResponse :md5sum-) "cb6915dd75fcbacce2cfbc55a90a7b92")
(setf (get robot_package::MoveLResponse :datatype-) "robot_package/MoveLResponse")
(setf (get robot_package::MoveLResponse :definition-)
      "int8 arm_index
bool relative
float32 vel
float32[] terminal
---
int32 result
string strRt
")



(provide :robot_package/MoveL "cb6915dd75fcbacce2cfbc55a90a7b92")


