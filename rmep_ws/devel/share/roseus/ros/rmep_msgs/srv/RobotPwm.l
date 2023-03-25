;; Auto-generated. Do not edit!


(when (boundp 'rmep_msgs::RobotPwm)
  (if (not (find-package "RMEP_MSGS"))
    (make-package "RMEP_MSGS"))
  (shadow 'RobotPwm (find-package "RMEP_MSGS")))
(unless (find-package "RMEP_MSGS::ROBOTPWM")
  (make-package "RMEP_MSGS::ROBOTPWM"))
(unless (find-package "RMEP_MSGS::ROBOTPWMREQUEST")
  (make-package "RMEP_MSGS::ROBOTPWMREQUEST"))
(unless (find-package "RMEP_MSGS::ROBOTPWMRESPONSE")
  (make-package "RMEP_MSGS::ROBOTPWMRESPONSE"))

(in-package "ROS")





(defclass rmep_msgs::RobotPwmRequest
  :super ros::object
  :slots (_pwm1_freq _pwm1_value _pwm2_freq _pwm2_value _pwm3_freq _pwm3_value _pwm4_freq _pwm4_value _pwm5_freq _pwm5_value _pwm6_freq _pwm6_value ))

(defmethod rmep_msgs::RobotPwmRequest
  (:init
   (&key
    ((:pwm1_freq __pwm1_freq) 0.0)
    ((:pwm1_value __pwm1_value) 0.0)
    ((:pwm2_freq __pwm2_freq) 0.0)
    ((:pwm2_value __pwm2_value) 0.0)
    ((:pwm3_freq __pwm3_freq) 0.0)
    ((:pwm3_value __pwm3_value) 0.0)
    ((:pwm4_freq __pwm4_freq) 0.0)
    ((:pwm4_value __pwm4_value) 0.0)
    ((:pwm5_freq __pwm5_freq) 0.0)
    ((:pwm5_value __pwm5_value) 0.0)
    ((:pwm6_freq __pwm6_freq) 0.0)
    ((:pwm6_value __pwm6_value) 0.0)
    )
   (send-super :init)
   (setq _pwm1_freq (float __pwm1_freq))
   (setq _pwm1_value (float __pwm1_value))
   (setq _pwm2_freq (float __pwm2_freq))
   (setq _pwm2_value (float __pwm2_value))
   (setq _pwm3_freq (float __pwm3_freq))
   (setq _pwm3_value (float __pwm3_value))
   (setq _pwm4_freq (float __pwm4_freq))
   (setq _pwm4_value (float __pwm4_value))
   (setq _pwm5_freq (float __pwm5_freq))
   (setq _pwm5_value (float __pwm5_value))
   (setq _pwm6_freq (float __pwm6_freq))
   (setq _pwm6_value (float __pwm6_value))
   self)
  (:pwm1_freq
   (&optional __pwm1_freq)
   (if __pwm1_freq (setq _pwm1_freq __pwm1_freq)) _pwm1_freq)
  (:pwm1_value
   (&optional __pwm1_value)
   (if __pwm1_value (setq _pwm1_value __pwm1_value)) _pwm1_value)
  (:pwm2_freq
   (&optional __pwm2_freq)
   (if __pwm2_freq (setq _pwm2_freq __pwm2_freq)) _pwm2_freq)
  (:pwm2_value
   (&optional __pwm2_value)
   (if __pwm2_value (setq _pwm2_value __pwm2_value)) _pwm2_value)
  (:pwm3_freq
   (&optional __pwm3_freq)
   (if __pwm3_freq (setq _pwm3_freq __pwm3_freq)) _pwm3_freq)
  (:pwm3_value
   (&optional __pwm3_value)
   (if __pwm3_value (setq _pwm3_value __pwm3_value)) _pwm3_value)
  (:pwm4_freq
   (&optional __pwm4_freq)
   (if __pwm4_freq (setq _pwm4_freq __pwm4_freq)) _pwm4_freq)
  (:pwm4_value
   (&optional __pwm4_value)
   (if __pwm4_value (setq _pwm4_value __pwm4_value)) _pwm4_value)
  (:pwm5_freq
   (&optional __pwm5_freq)
   (if __pwm5_freq (setq _pwm5_freq __pwm5_freq)) _pwm5_freq)
  (:pwm5_value
   (&optional __pwm5_value)
   (if __pwm5_value (setq _pwm5_value __pwm5_value)) _pwm5_value)
  (:pwm6_freq
   (&optional __pwm6_freq)
   (if __pwm6_freq (setq _pwm6_freq __pwm6_freq)) _pwm6_freq)
  (:pwm6_value
   (&optional __pwm6_value)
   (if __pwm6_value (setq _pwm6_value __pwm6_value)) _pwm6_value)
  (:serialization-length
   ()
   (+
    ;; float32 _pwm1_freq
    4
    ;; float32 _pwm1_value
    4
    ;; float32 _pwm2_freq
    4
    ;; float32 _pwm2_value
    4
    ;; float32 _pwm3_freq
    4
    ;; float32 _pwm3_value
    4
    ;; float32 _pwm4_freq
    4
    ;; float32 _pwm4_value
    4
    ;; float32 _pwm5_freq
    4
    ;; float32 _pwm5_value
    4
    ;; float32 _pwm6_freq
    4
    ;; float32 _pwm6_value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pwm1_freq
       (sys::poke _pwm1_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm1_value
       (sys::poke _pwm1_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm2_freq
       (sys::poke _pwm2_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm2_value
       (sys::poke _pwm2_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm3_freq
       (sys::poke _pwm3_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm3_value
       (sys::poke _pwm3_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm4_freq
       (sys::poke _pwm4_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm4_value
       (sys::poke _pwm4_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm5_freq
       (sys::poke _pwm5_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm5_value
       (sys::poke _pwm5_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm6_freq
       (sys::poke _pwm6_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pwm6_value
       (sys::poke _pwm6_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pwm1_freq
     (setq _pwm1_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm1_value
     (setq _pwm1_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm2_freq
     (setq _pwm2_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm2_value
     (setq _pwm2_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm3_freq
     (setq _pwm3_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm3_value
     (setq _pwm3_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm4_freq
     (setq _pwm4_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm4_value
     (setq _pwm4_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm5_freq
     (setq _pwm5_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm5_value
     (setq _pwm5_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm6_freq
     (setq _pwm6_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pwm6_value
     (setq _pwm6_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rmep_msgs::RobotPwmResponse
  :super ros::object
  :slots (_result ))

(defmethod rmep_msgs::RobotPwmResponse
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
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass rmep_msgs::RobotPwm
  :super ros::object
  :slots ())

(setf (get rmep_msgs::RobotPwm :md5sum-) "6c239c834ae059903d50c5af0762999e")
(setf (get rmep_msgs::RobotPwm :datatype-) "rmep_msgs/RobotPwm")
(setf (get rmep_msgs::RobotPwm :request) rmep_msgs::RobotPwmRequest)
(setf (get rmep_msgs::RobotPwm :response) rmep_msgs::RobotPwmResponse)

(defmethod rmep_msgs::RobotPwmRequest
  (:response () (instance rmep_msgs::RobotPwmResponse :init)))

(setf (get rmep_msgs::RobotPwmRequest :md5sum-) "6c239c834ae059903d50c5af0762999e")
(setf (get rmep_msgs::RobotPwmRequest :datatype-) "rmep_msgs/RobotPwmRequest")
(setf (get rmep_msgs::RobotPwmRequest :definition-)
      "float32 pwm1_freq
float32 pwm1_value
float32 pwm2_freq
float32 pwm2_value
float32 pwm3_freq
float32 pwm3_value
float32 pwm4_freq
float32 pwm4_value
float32 pwm5_freq
float32 pwm5_value
float32 pwm6_freq
float32 pwm6_value
---
uint8 result



")

(setf (get rmep_msgs::RobotPwmResponse :md5sum-) "6c239c834ae059903d50c5af0762999e")
(setf (get rmep_msgs::RobotPwmResponse :datatype-) "rmep_msgs/RobotPwmResponse")
(setf (get rmep_msgs::RobotPwmResponse :definition-)
      "float32 pwm1_freq
float32 pwm1_value
float32 pwm2_freq
float32 pwm2_value
float32 pwm3_freq
float32 pwm3_value
float32 pwm4_freq
float32 pwm4_value
float32 pwm5_freq
float32 pwm5_value
float32 pwm6_freq
float32 pwm6_value
---
uint8 result



")



(provide :rmep_msgs/RobotPwm "6c239c834ae059903d50c5af0762999e")


