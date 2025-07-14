;; Auto-generated. Do not edit!


(when (boundp 'robot_package::MoveABSJ)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'MoveABSJ (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::MOVEABSJ")
  (make-package "ROBOT_PACKAGE::MOVEABSJ"))
(unless (find-package "ROBOT_PACKAGE::MOVEABSJREQUEST")
  (make-package "ROBOT_PACKAGE::MOVEABSJREQUEST"))
(unless (find-package "ROBOT_PACKAGE::MOVEABSJRESPONSE")
  (make-package "ROBOT_PACKAGE::MOVEABSJRESPONSE"))

(in-package "ROS")





(defclass robot_package::MoveABSJRequest
  :super ros::object
  :slots (_arm_index _relative _vel _joints ))

(defmethod robot_package::MoveABSJRequest
  (:init
   (&key
    ((:arm_index __arm_index) 0)
    ((:relative __relative) nil)
    ((:vel __vel) 0.0)
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _arm_index (round __arm_index))
   (setq _relative __relative)
   (setq _vel (float __vel))
   (setq _joints __joints)
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
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:serialization-length
   ()
   (+
    ;; int8 _arm_index
    1
    ;; bool _relative
    1
    ;; float32 _vel
    4
    ;; float32[] _joints
    (* 4    (length _joints)) 4
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
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass robot_package::MoveABSJResponse
  :super ros::object
  :slots (_result _strRt ))

(defmethod robot_package::MoveABSJResponse
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

(defclass robot_package::MoveABSJ
  :super ros::object
  :slots ())

(setf (get robot_package::MoveABSJ :md5sum-) "9f5c1d959c1e4ebf958c5633996996d5")
(setf (get robot_package::MoveABSJ :datatype-) "robot_package/MoveABSJ")
(setf (get robot_package::MoveABSJ :request) robot_package::MoveABSJRequest)
(setf (get robot_package::MoveABSJ :response) robot_package::MoveABSJResponse)

(defmethod robot_package::MoveABSJRequest
  (:response () (instance robot_package::MoveABSJResponse :init)))

(setf (get robot_package::MoveABSJRequest :md5sum-) "9f5c1d959c1e4ebf958c5633996996d5")
(setf (get robot_package::MoveABSJRequest :datatype-) "robot_package/MoveABSJRequest")
(setf (get robot_package::MoveABSJRequest :definition-)
      "int8 arm_index
bool relative
float32 vel
float32[] joints
---
int32 result
string strRt
")

(setf (get robot_package::MoveABSJResponse :md5sum-) "9f5c1d959c1e4ebf958c5633996996d5")
(setf (get robot_package::MoveABSJResponse :datatype-) "robot_package/MoveABSJResponse")
(setf (get robot_package::MoveABSJResponse :definition-)
      "int8 arm_index
bool relative
float32 vel
float32[] joints
---
int32 result
string strRt
")



(provide :robot_package/MoveABSJ "9f5c1d959c1e4ebf958c5633996996d5")


