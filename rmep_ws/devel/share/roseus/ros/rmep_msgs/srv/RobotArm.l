;; Auto-generated. Do not edit!


(when (boundp 'rmep_msgs::RobotArm)
  (if (not (find-package "RMEP_MSGS"))
    (make-package "RMEP_MSGS"))
  (shadow 'RobotArm (find-package "RMEP_MSGS")))
(unless (find-package "RMEP_MSGS::ROBOTARM")
  (make-package "RMEP_MSGS::ROBOTARM"))
(unless (find-package "RMEP_MSGS::ROBOTARMREQUEST")
  (make-package "RMEP_MSGS::ROBOTARMREQUEST"))
(unless (find-package "RMEP_MSGS::ROBOTARMRESPONSE")
  (make-package "RMEP_MSGS::ROBOTARMRESPONSE"))

(in-package "ROS")





(defclass rmep_msgs::RobotArmRequest
  :super ros::object
  :slots (_x _y ))

(defmethod rmep_msgs::RobotArmRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rmep_msgs::RobotArmResponse
  :super ros::object
  :slots (_result ))

(defmethod rmep_msgs::RobotArmResponse
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

(defclass rmep_msgs::RobotArm
  :super ros::object
  :slots ())

(setf (get rmep_msgs::RobotArm :md5sum-) "ca73bd755846e340fdd096df095b3706")
(setf (get rmep_msgs::RobotArm :datatype-) "rmep_msgs/RobotArm")
(setf (get rmep_msgs::RobotArm :request) rmep_msgs::RobotArmRequest)
(setf (get rmep_msgs::RobotArm :response) rmep_msgs::RobotArmResponse)

(defmethod rmep_msgs::RobotArmRequest
  (:response () (instance rmep_msgs::RobotArmResponse :init)))

(setf (get rmep_msgs::RobotArmRequest :md5sum-) "ca73bd755846e340fdd096df095b3706")
(setf (get rmep_msgs::RobotArmRequest :datatype-) "rmep_msgs/RobotArmRequest")
(setf (get rmep_msgs::RobotArmRequest :definition-)
      "float32 x
float32 y
---
uint8 result

")

(setf (get rmep_msgs::RobotArmResponse :md5sum-) "ca73bd755846e340fdd096df095b3706")
(setf (get rmep_msgs::RobotArmResponse :datatype-) "rmep_msgs/RobotArmResponse")
(setf (get rmep_msgs::RobotArmResponse :definition-)
      "float32 x
float32 y
---
uint8 result

")



(provide :rmep_msgs/RobotArm "ca73bd755846e340fdd096df095b3706")


