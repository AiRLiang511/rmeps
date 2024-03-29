;; Auto-generated. Do not edit!


(when (boundp 'rmep_msgs::GimbalCmd)
  (if (not (find-package "RMEP_MSGS"))
    (make-package "RMEP_MSGS"))
  (shadow 'GimbalCmd (find-package "RMEP_MSGS")))
(unless (find-package "RMEP_MSGS::GIMBALCMD")
  (make-package "RMEP_MSGS::GIMBALCMD"))

(in-package "ROS")
;;//! \htmlinclude GimbalCmd.msg.html


(defclass rmep_msgs::GimbalCmd
  :super ros::object
  :slots (_pitch _yaw _pitch_speed _yaw_speed ))

(defmethod rmep_msgs::GimbalCmd
  (:init
   (&key
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:pitch_speed __pitch_speed) 0.0)
    ((:yaw_speed __yaw_speed) 0.0)
    )
   (send-super :init)
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _pitch_speed (float __pitch_speed))
   (setq _yaw_speed (float __yaw_speed))
   self)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch_speed
   (&optional __pitch_speed)
   (if __pitch_speed (setq _pitch_speed __pitch_speed)) _pitch_speed)
  (:yaw_speed
   (&optional __yaw_speed)
   (if __yaw_speed (setq _yaw_speed __yaw_speed)) _yaw_speed)
  (:serialization-length
   ()
   (+
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _pitch_speed
    4
    ;; float32 _yaw_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_speed
       (sys::poke _pitch_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_speed
       (sys::poke _yaw_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_speed
     (setq _pitch_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_speed
     (setq _yaw_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rmep_msgs::GimbalCmd :md5sum-) "b6efcebeeaac7a8075e1a22aebb46de3")
(setf (get rmep_msgs::GimbalCmd :datatype-) "rmep_msgs/GimbalCmd")
(setf (get rmep_msgs::GimbalCmd :definition-)
      "float32 pitch
float32 yaw
float32 pitch_speed
float32 yaw_speed

")



(provide :rmep_msgs/GimbalCmd "b6efcebeeaac7a8075e1a22aebb46de3")


