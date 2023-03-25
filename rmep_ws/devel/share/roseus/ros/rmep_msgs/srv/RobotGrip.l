;; Auto-generated. Do not edit!


(when (boundp 'rmep_msgs::RobotGrip)
  (if (not (find-package "RMEP_MSGS"))
    (make-package "RMEP_MSGS"))
  (shadow 'RobotGrip (find-package "RMEP_MSGS")))
(unless (find-package "RMEP_MSGS::ROBOTGRIP")
  (make-package "RMEP_MSGS::ROBOTGRIP"))
(unless (find-package "RMEP_MSGS::ROBOTGRIPREQUEST")
  (make-package "RMEP_MSGS::ROBOTGRIPREQUEST"))
(unless (find-package "RMEP_MSGS::ROBOTGRIPRESPONSE")
  (make-package "RMEP_MSGS::ROBOTGRIPRESPONSE"))

(in-package "ROS")





(defclass rmep_msgs::RobotGripRequest
  :super ros::object
  :slots (_state _value ))

(defmethod rmep_msgs::RobotGripRequest
  (:init
   (&key
    ((:state __state) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _value (float __value))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rmep_msgs::RobotGripResponse
  :super ros::object
  :slots (_result ))

(defmethod rmep_msgs::RobotGripResponse
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

(defclass rmep_msgs::RobotGrip
  :super ros::object
  :slots ())

(setf (get rmep_msgs::RobotGrip :md5sum-) "156b17ddf1dc4e8bbde7e72d0e8736d5")
(setf (get rmep_msgs::RobotGrip :datatype-) "rmep_msgs/RobotGrip")
(setf (get rmep_msgs::RobotGrip :request) rmep_msgs::RobotGripRequest)
(setf (get rmep_msgs::RobotGrip :response) rmep_msgs::RobotGripResponse)

(defmethod rmep_msgs::RobotGripRequest
  (:response () (instance rmep_msgs::RobotGripResponse :init)))

(setf (get rmep_msgs::RobotGripRequest :md5sum-) "156b17ddf1dc4e8bbde7e72d0e8736d5")
(setf (get rmep_msgs::RobotGripRequest :datatype-) "rmep_msgs/RobotGripRequest")
(setf (get rmep_msgs::RobotGripRequest :definition-)
      "uint8 state
float32 value
---
uint8 result

")

(setf (get rmep_msgs::RobotGripResponse :md5sum-) "156b17ddf1dc4e8bbde7e72d0e8736d5")
(setf (get rmep_msgs::RobotGripResponse :datatype-) "rmep_msgs/RobotGripResponse")
(setf (get rmep_msgs::RobotGripResponse :definition-)
      "uint8 state
float32 value
---
uint8 result

")



(provide :rmep_msgs/RobotGrip "156b17ddf1dc4e8bbde7e72d0e8736d5")


