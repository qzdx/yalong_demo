;; Auto-generated. Do not edit!


(when (boundp 'robot_package::ImageToFrame)
  (if (not (find-package "ROBOT_PACKAGE"))
    (make-package "ROBOT_PACKAGE"))
  (shadow 'ImageToFrame (find-package "ROBOT_PACKAGE")))
(unless (find-package "ROBOT_PACKAGE::IMAGETOFRAME")
  (make-package "ROBOT_PACKAGE::IMAGETOFRAME"))
(unless (find-package "ROBOT_PACKAGE::IMAGETOFRAMEREQUEST")
  (make-package "ROBOT_PACKAGE::IMAGETOFRAMEREQUEST"))
(unless (find-package "ROBOT_PACKAGE::IMAGETOFRAMERESPONSE")
  (make-package "ROBOT_PACKAGE::IMAGETOFRAMERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass robot_package::ImageToFrameRequest
  :super ros::object
  :slots (_image _armIndex _position ))

(defmethod robot_package::ImageToFrameRequest
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:armIndex __armIndex) 0)
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _image __image)
   (setq _armIndex (round __armIndex))
   (setq _position __position)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:armIndex
   (&optional __armIndex)
   (if __armIndex (setq _armIndex __armIndex)) _armIndex)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; int8 _armIndex
    1
    ;; float32[] _position
    (* 4    (length _position)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; int8 _armIndex
       (write-byte _armIndex s)
     ;; float32[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; int8 _armIndex
     (setq _armIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _armIndex 127) (setq _armIndex (- _armIndex 256)))
   ;; float32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass robot_package::ImageToFrameResponse
  :super ros::object
  :slots (_terminal _result _strRt ))

(defmethod robot_package::ImageToFrameResponse
  (:init
   (&key
    ((:terminal __terminal) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:result __result) 0)
    ((:strRt __strRt) "")
    )
   (send-super :init)
   (setq _terminal __terminal)
   (setq _result (round __result))
   (setq _strRt (string __strRt))
   self)
  (:terminal
   (&optional __terminal)
   (if __terminal (setq _terminal __terminal)) _terminal)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:strRt
   (&optional __strRt)
   (if __strRt (setq _strRt __strRt)) _strRt)
  (:serialization-length
   ()
   (+
    ;; float32[] _terminal
    (* 4    (length _terminal)) 4
    ;; int32 _result
    4
    ;; string _strRt
    4 (length _strRt)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _terminal
     (write-long (length _terminal) s)
     (dotimes (i (length _terminal))
       (sys::poke (elt _terminal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _result
       (write-long _result s)
     ;; string _strRt
       (write-long (length _strRt) s) (princ _strRt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _terminal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _terminal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _terminal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _strRt
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _strRt (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_package::ImageToFrame
  :super ros::object
  :slots ())

(setf (get robot_package::ImageToFrame :md5sum-) "98dec61900beef2fa84144aa65b13d5c")
(setf (get robot_package::ImageToFrame :datatype-) "robot_package/ImageToFrame")
(setf (get robot_package::ImageToFrame :request) robot_package::ImageToFrameRequest)
(setf (get robot_package::ImageToFrame :response) robot_package::ImageToFrameResponse)

(defmethod robot_package::ImageToFrameRequest
  (:response () (instance robot_package::ImageToFrameResponse :init)))

(setf (get robot_package::ImageToFrameRequest :md5sum-) "98dec61900beef2fa84144aa65b13d5c")
(setf (get robot_package::ImageToFrameRequest :datatype-) "robot_package/ImageToFrameRequest")
(setf (get robot_package::ImageToFrameRequest :definition-)
      "sensor_msgs/Image image
int8 armIndex
float32[] position

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
float32[] terminal
int32 result
string strRt
")

(setf (get robot_package::ImageToFrameResponse :md5sum-) "98dec61900beef2fa84144aa65b13d5c")
(setf (get robot_package::ImageToFrameResponse :datatype-) "robot_package/ImageToFrameResponse")
(setf (get robot_package::ImageToFrameResponse :definition-)
      "sensor_msgs/Image image
int8 armIndex
float32[] position

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
float32[] terminal
int32 result
string strRt
")



(provide :robot_package/ImageToFrame "98dec61900beef2fa84144aa65b13d5c")


