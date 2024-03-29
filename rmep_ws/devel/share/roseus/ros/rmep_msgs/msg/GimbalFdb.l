;; Auto-generated. Do not edit!


(when (boundp 'rmep_msgs::GimbalFdb)
  (if (not (find-package "RMEP_MSGS"))
    (make-package "RMEP_MSGS"))
  (shadow 'GimbalFdb (find-package "RMEP_MSGS")))
(unless (find-package "RMEP_MSGS::GIMBALFDB")
  (make-package "RMEP_MSGS::GIMBALFDB"))

(in-package "ROS")
;;//! \htmlinclude GimbalFdb.msg.html


(defclass rmep_msgs::GimbalFdb
  :super ros::object
  :slots (_stamp _pitch_angle_fdb _yaw_angle_fdb _pitch_ground_angle_fdb _yaw_ground_angle_fdb ))

(defmethod rmep_msgs::GimbalFdb
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:pitch_angle_fdb __pitch_angle_fdb) 0.0)
    ((:yaw_angle_fdb __yaw_angle_fdb) 0.0)
    ((:pitch_ground_angle_fdb __pitch_ground_angle_fdb) 0.0)
    ((:yaw_ground_angle_fdb __yaw_ground_angle_fdb) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _pitch_angle_fdb (float __pitch_angle_fdb))
   (setq _yaw_angle_fdb (float __yaw_angle_fdb))
   (setq _pitch_ground_angle_fdb (float __pitch_ground_angle_fdb))
   (setq _yaw_ground_angle_fdb (float __yaw_ground_angle_fdb))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:pitch_angle_fdb
   (&optional __pitch_angle_fdb)
   (if __pitch_angle_fdb (setq _pitch_angle_fdb __pitch_angle_fdb)) _pitch_angle_fdb)
  (:yaw_angle_fdb
   (&optional __yaw_angle_fdb)
   (if __yaw_angle_fdb (setq _yaw_angle_fdb __yaw_angle_fdb)) _yaw_angle_fdb)
  (:pitch_ground_angle_fdb
   (&optional __pitch_ground_angle_fdb)
   (if __pitch_ground_angle_fdb (setq _pitch_ground_angle_fdb __pitch_ground_angle_fdb)) _pitch_ground_angle_fdb)
  (:yaw_ground_angle_fdb
   (&optional __yaw_ground_angle_fdb)
   (if __yaw_ground_angle_fdb (setq _yaw_ground_angle_fdb __yaw_ground_angle_fdb)) _yaw_ground_angle_fdb)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32 _pitch_angle_fdb
    4
    ;; float32 _yaw_angle_fdb
    4
    ;; float32 _pitch_ground_angle_fdb
    4
    ;; float32 _yaw_ground_angle_fdb
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32 _pitch_angle_fdb
       (sys::poke _pitch_angle_fdb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_angle_fdb
       (sys::poke _yaw_angle_fdb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_ground_angle_fdb
       (sys::poke _pitch_ground_angle_fdb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_ground_angle_fdb
       (sys::poke _yaw_ground_angle_fdb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _pitch_angle_fdb
     (setq _pitch_angle_fdb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_angle_fdb
     (setq _yaw_angle_fdb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_ground_angle_fdb
     (setq _pitch_ground_angle_fdb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_ground_angle_fdb
     (setq _yaw_ground_angle_fdb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rmep_msgs::GimbalFdb :md5sum-) "4baddb8bc789a9d0d6c754f66cd82965")
(setf (get rmep_msgs::GimbalFdb :datatype-) "rmep_msgs/GimbalFdb")
(setf (get rmep_msgs::GimbalFdb :definition-)
      "time stamp
float32 pitch_angle_fdb
float32 yaw_angle_fdb
float32 pitch_ground_angle_fdb
float32 yaw_ground_angle_fdb



")



(provide :rmep_msgs/GimbalFdb "4baddb8bc789a9d0d6c754f66cd82965")


