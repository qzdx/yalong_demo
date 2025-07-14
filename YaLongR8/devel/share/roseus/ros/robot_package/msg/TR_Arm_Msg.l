;; Auto-generated. Do not edit!


(when (boundp 'robot_package::TR_Arm_Msg)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'TR_Arm_Msg (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::TR_ARM_MSG")
  (make-package "ROBOT_PACKAGE::TR_ARM_MSG"))

(in-package "ROS")
;;//! \htmlinclude TR_Arm_Msg.msg.html


(defclass robot_package::TR_Arm_Msg
  :super ros::object
  :slots (_name _dof _servoState _clawState _terminal _joints _homogeneousMatrix _float_array _integer_value ))

(defmethod robot_package::TR_Arm_Msg
  (:init
   (&key
    ((:name __name) "")
    ((:dof __dof) 0)
    ((:servoState __servoState) nil)
    ((:clawState __clawState) nil)
    ((:terminal __terminal) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:homogeneousMatrix __homogeneousMatrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:float_array __float_array) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:integer_value __integer_value) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _dof (round __dof))
   (setq _servoState __servoState)
   (setq _clawState __clawState)
   (setq _terminal __terminal)
   (setq _joints __joints)
   (setq _homogeneousMatrix __homogeneousMatrix)
   (setq _float_array __float_array)
   (setq _integer_value (round __integer_value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:dof
   (&optional __dof)
   (if __dof (setq _dof __dof)) _dof)
  (:servoState
   (&optional __servoState)
   (if __servoState (setq _servoState __servoState)) _servoState)
  (:clawState
   (&optional __clawState)
   (if __clawState (setq _clawState __clawState)) _clawState)
  (:terminal
   (&optional __terminal)
   (if __terminal (setq _terminal __terminal)) _terminal)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:homogeneousMatrix
   (&optional __homogeneousMatrix)
   (if __homogeneousMatrix (setq _homogeneousMatrix __homogeneousMatrix)) _homogeneousMatrix)
  (:float_array
   (&optional __float_array)
   (if __float_array (setq _float_array __float_array)) _float_array)
  (:integer_value
   (&optional __integer_value)
   (if __integer_value (setq _integer_value __integer_value)) _integer_value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _dof
    4
    ;; bool _servoState
    1
    ;; bool _clawState
    1
    ;; float32[] _terminal
    (* 4    (length _terminal)) 4
    ;; float32[] _joints
    (* 4    (length _joints)) 4
    ;; float32[] _homogeneousMatrix
    (* 4    (length _homogeneousMatrix)) 4
    ;; float32[] _float_array
    (* 4    (length _float_array)) 4
    ;; int32 _integer_value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _dof
       (write-long _dof s)
     ;; bool _servoState
       (if _servoState (write-byte -1 s) (write-byte 0 s))
     ;; bool _clawState
       (if _clawState (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _terminal
     (write-long (length _terminal) s)
     (dotimes (i (length _terminal))
       (sys::poke (elt _terminal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _homogeneousMatrix
     (write-long (length _homogeneousMatrix) s)
     (dotimes (i (length _homogeneousMatrix))
       (sys::poke (elt _homogeneousMatrix i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _float_array
     (write-long (length _float_array) s)
     (dotimes (i (length _float_array))
       (sys::poke (elt _float_array i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _integer_value
       (write-long _integer_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _dof
     (setq _dof (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _servoState
     (setq _servoState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clawState
     (setq _clawState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _terminal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _terminal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _terminal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _homogeneousMatrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _homogeneousMatrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _homogeneousMatrix i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _float_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _float_array (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _float_array i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _integer_value
     (setq _integer_value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_package::TR_Arm_Msg :md5sum-) "a31b03a07f77ff5658a0c1284b706f5b")
(setf (get robot_package::TR_Arm_Msg :datatype-) "robot_package/TR_Arm_Msg")
(setf (get robot_package::TR_Arm_Msg :definition-)
      "string name
int32 dof
bool servoState
bool clawState
float32[] terminal
float32[] joints
float32[] homogeneousMatrix

float32[] float_array
int32 integer_value
")



(provide :robot_package/TR_Arm_Msg "a31b03a07f77ff5658a0c1284b706f5b")


