;; Auto-generated. Do not edit!


(when (boundp 'rmep_msgs::RobotBlaster)
  (if (not (find-package "RMEP_MSGS"))
    (make-package "RMEP_MSGS"))
  (shadow 'RobotBlaster (find-package "RMEP_MSGS")))
(unless (find-package "RMEP_MSGS::ROBOTBLASTER")
  (make-package "RMEP_MSGS::ROBOTBLASTER"))
(unless (find-package "RMEP_MSGS::ROBOTBLASTERREQUEST")
  (make-package "RMEP_MSGS::ROBOTBLASTERREQUEST"))
(unless (find-package "RMEP_MSGS::ROBOTBLASTERRESPONSE")
  (make-package "RMEP_MSGS::ROBOTBLASTERRESPONSE"))

(in-package "ROS")





(defclass rmep_msgs::RobotBlasterRequest
  :super ros::object
  :slots (_type _count ))

(defmethod rmep_msgs::RobotBlasterRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _count (round __count))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rmep_msgs::RobotBlasterResponse
  :super ros::object
  :slots (_result ))

(defmethod rmep_msgs::RobotBlasterResponse
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

(defclass rmep_msgs::RobotBlaster
  :super ros::object
  :slots ())

(setf (get rmep_msgs::RobotBlaster :md5sum-) "a7120ebecfd35f623ffd5d4687655fe9")
(setf (get rmep_msgs::RobotBlaster :datatype-) "rmep_msgs/RobotBlaster")
(setf (get rmep_msgs::RobotBlaster :request) rmep_msgs::RobotBlasterRequest)
(setf (get rmep_msgs::RobotBlaster :response) rmep_msgs::RobotBlasterResponse)

(defmethod rmep_msgs::RobotBlasterRequest
  (:response () (instance rmep_msgs::RobotBlasterResponse :init)))

(setf (get rmep_msgs::RobotBlasterRequest :md5sum-) "a7120ebecfd35f623ffd5d4687655fe9")
(setf (get rmep_msgs::RobotBlasterRequest :datatype-) "rmep_msgs/RobotBlasterRequest")
(setf (get rmep_msgs::RobotBlasterRequest :definition-)
      "uint8 type
uint32 count
---
uint8 result

")

(setf (get rmep_msgs::RobotBlasterResponse :md5sum-) "a7120ebecfd35f623ffd5d4687655fe9")
(setf (get rmep_msgs::RobotBlasterResponse :datatype-) "rmep_msgs/RobotBlasterResponse")
(setf (get rmep_msgs::RobotBlasterResponse :definition-)
      "uint8 type
uint32 count
---
uint8 result

")



(provide :rmep_msgs/RobotBlaster "a7120ebecfd35f623ffd5d4687655fe9")


