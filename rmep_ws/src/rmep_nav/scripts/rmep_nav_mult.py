#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy #导入rospy库
import actionlib #导入actionlib 库
import os,inspect #导入os库
from actionlib_msgs.msg import * #导入actionlib的所有模块
from geometry_msgs.msg import Pose, Point, Quaternion, Twist #导入四个消息数据类型，姿态，目标点，四元数，运动消息Twist
from geometry_msgs.msg import PointStamped
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal #导入movebase的两个消息数据类型
from tf.transformations import quaternion_from_euler #导入tf变换库的欧拉角转四元数库
from std_msgs.msg import Int8 
from math import pi #导入圆周率pi
import tf
from std_msgs.msg import String #导入标准消息的字符串消息数据格式
from std_msgs.msg import Int8
from visualization_msgs.msg import Marker
from visualization_msgs.msg import MarkerArray
import roslib; roslib.load_manifest('visualization_marker_tutorials')

count_marker = 0
MARKERS_MAX = 200
markerArray = MarkerArray()

import copy
import yaml
import time
import threading
import shutil
import tf
from tf_conversions import transformations    #库函数
from math import pi    #库函数

nav_goals=[]
goal_dict=dict()
place_name=""

current_x = 0
current_y = 0
xy_tolerate = 0.3   #离目标点容忍度 /m
enemy_exist = 0
enemy_exist_count = 0


nav_start_time = 0

#初始化节点
rospy.init_node('rmep_nav_mult',anonymous=False)
square_size = 1.0
cmd_vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size=5) #实例化一个消息发布函数
move_base = actionlib.SimpleActionClient("move_base", MoveBaseAction) #action服务器连接
Marker_publisher = rospy.Publisher('visualization_marker_array', MarkerArray, queue_size=5)
rate_wait = rospy.Rate(10)

#设置参数 
rospy.loginfo('等待move_base action服务器连接...')
move_base.wait_for_server(rospy.Duration(30))
rospy.loginfo('已连接导航服务')
yaml_path = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe()))) + "/goal_mul.yaml"
goal_msg = [0.0,0.0,0.0]
clicked_point_list = []



def callback_clicked_point(data):
    global goal_msg 
    goal_msg[0] = data.point.x
    goal_msg[1] = data.point.y
    print ("[INFO] Goal:[x:%f  , y:%f]" %(goal_msg[0] , goal_msg[1]))
    mark_point(goal_msg[0],goal_msg[1])
    clicked_point_list.append(copy.deepcopy(goal_msg))

def mark_point(x,y):
    global count_marker
    global MARKERS_MAX
    global markerArray
    marker = Marker()
    marker.header.frame_id = "map"
    marker.type = marker.SPHERE
    marker.action = marker.ADD
    marker.scale.x = 0.2
    marker.scale.y = 0.2
    marker.scale.z = 0.2
    marker.color.a = 1.0
    marker.color.r = 1.0
    marker.color.g = 0.0
    marker.color.b = 0.0
    marker.pose.orientation.w = 1.0
    marker.pose.position.x = x
    marker.pose.position.y = y
    marker.pose.position.z = 0
    if(count_marker > MARKERS_MAX):
       markerArray.markers.pop(0)
    markerArray.markers.append(marker)
     # Renumber the marker IDs
    id = 0
    for m in markerArray.markers:
       m.id = id
       id += 1
   # Publish the MarkerArray
    Marker_publisher.publish(markerArray)
    count_marker += 1

#添加导航坐标点,输入x（前）坐标，y（左）坐标，th（平面朝向0～360度）
def nav_to(x,y,th):
    mark_point(x,y)
    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id='map'
    goal.target_pose.header.stamp = rospy.Time.now()
    goal.target_pose.pose = pose_e(x,y,th)
    move_base.send_goal(goal)


def get_state(timeout):
    start_time = rospy.Time.now().to_sec()
    while  not rospy.is_shutdown():
        state = move_base.get_state()
        #print(str(state))
        now_time = rospy.Time.now().to_sec()
        if state == 3:
           return True
        if (now_time-start_time)>timeout:
           return False

#写一个函数 用于任务完成提示。
def move(goal):
    move_base.send_goal(goal)
    if get_state(45):
        rospy.loginfo(place_name+'导航成功！')
    else:
        while not rospy.is_shutdown():
            rospy.loginfo('时间超时，进入恢复状态，重新导航。')
            move_for(0,-1,5)
            move_base.send_goal(goal)
            if get_state(10):
                break
   
def shutdown():
    rospy.loginfo('机器人任务停止')
    move_base.cancel_goal()
    rospy.sleep(2)
    cmd_vel_pub.publish(Twist)
    rospy.sleep(1)
    
def pose_e(x,y,th):#输入x（前）坐标，y（左）坐标，th（平面朝向0～360度）
    new_pose=Pose()
    new_pose.position.x=float(x)
    new_pose.position.y=float(y)
    #机器朝向，平面朝向弧度转化成四元数空间位姿
    q=quaternion_from_euler(0.0,0.0,float(th)/180.0*pi)
    new_pose.orientation.x=q[0]
    new_pose.orientation.y=q[1]
    new_pose.orientation.z=q[2]
    new_pose.orientation.w=q[3]
    return  new_pose

def yaml_read():
    global goal_dict
    global nav_goals
    f = open(yaml_path) 
    cfg =  f.read()
    goal_dict = yaml.load(cfg)
    nav_goals=goal_dict.keys()

def nav_place(place):
    global place_name
    place_name=place
    print("尝试导航去:"+place_name)
    goal=place
    if goal in nav_goals:
        goal_data=goal_dict[goal]
        nav_to(goal_data[0],goal_data[1],goal_data[2])

def nav_to_place(place):
    global place_name
    place_name=place
    print("尝试导航去:"+place_name)
    goal = place
    if goal in nav_goals:
        goal_data=goal_dict[goal]
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id='map'
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose = pose_e(goal_data[0],goal_data[1],goal_data[2])
        move(goal)
    

def move_for(xspeed,tspeed,time_second):
    twist_data=Twist()
    twist_data.linear.x=xspeed
    twist_data.angular.z=tspeed
    time_start=time.time()
    while time.time()-time_start<time_second:
        cmd_vel_pub.publish(twist_data)
    cmd_vel_pub.publish(Twist())

def thread_job():
    rospy.spin() 

#定义更新坐标函数
def get_pos():    
        try:
            (trans, rot) = tf_listener.lookupTransform('/map', '/base_link', rospy.Time(0))
        #rospy_Time(0)指最近时刻存储的数据
        #得到从 '/map' 到 '/base_link' 的变换，在实际使用时，转换得出的坐标是在 '/base_link' 坐标系下的。
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            rospy.loginfo("tf Error")
            return None
        global current_x, current_y 
        current_x = trans[0]
        current_y = trans[1]
        #th = euler[2] / pi * 180

#定义判断是否到达离目标点指定距离函数
def reach_goal(place):
    get_pos()
    goal=place
    if goal in nav_goals:
        goal_data=goal_dict[goal]
    if((goal_data[0]-current_x)**2+(goal_data[1]-current_y)**2  <= xy_tolerate**2):
        print('reach the %s goal'%place)
        return True
    else:
        return False

def reach_point(x,y,tolerate):
    get_pos()
    if((x-current_x)**2+(y-current_y)**2  <= tolerate**2):
        return True
    else:
        return False
        
def callback_enemy_info(msg):
    global enemy_exist
    if(msg.data == 1):
        enemy_exist =1
    else:
        enemy_exist= 0

def Interval_mission(last_x,last_y):
    global enemy_exist
    global rate_wait
    global enemy_exist_count
    if enemy_exist ==1:
        enemy_exist_count = 50
        move_base.cancel_goal()
        while enemy_exist_count >0:
            if enemy_exist ==1:
                enemy_exist_count = 50
            else:
                enemy_exist_count-=1
            rate_wait.sleep()
        
        
def Goto_point(goal_x,goal_y,tolerate,nav_timeout):
    global nav_start_time
    global enemy_exist
    global rate_wait
    global enemy_exist_count
    nav_start_time = rospy.Time.now().to_sec()
    nav_to(goal_x,goal_y,0)
    while not reach_point(goal_x,goal_y,tolerate):
        nav_current_time = rospy.Time.now().to_sec()
        if (nav_current_time-nav_start_time)>nav_timeout:
            rospy.loginfo('时间超时，进入恢复状态，重新导航。')
            move_base.cancel_goal()
            move_for(0,-1,5)
            nav_start_time = rospy.Time.now().to_sec()
            nav_to(goal_x,goal_y,0)
        
        if enemy_exist ==1:
            enemy_exist_count = 40
            move_base.cancel_goal()
            rospy.loginfo('发现敌方，暂停导航')
            while enemy_exist_count >0:
                if enemy_exist ==1:
                    enemy_exist_count =40
                    enemy_exist =0
                else:
                    enemy_exist_count-=1
                rospy.loginfo(enemy_exist_count)
                rate_wait.sleep()
            nav_start_time = rospy.Time.now().to_sec()
            rospy.loginfo('未发现敌方，继续当前导航')
            nav_to(goal_x,goal_y,0)



if __name__ == "__main__":
    tf_listener = tf.TransformListener()
    rospy.Subscriber("/clicked_point",PointStamped,callback_clicked_point)
    rospy.Subscriber('/enemy_info',Int8,callback_enemy_info)
    yaml_read()
    add_thread = threading.Thread(target = thread_job)
    add_thread.start()
    Mode = 0 
    quit_flag = 1
    mode_flag = 0
    rate_nav = rospy.Rate(50)

    print ("[1] Single Point Navigation\n")
    print ("[2] Multi Points in RVIZ \n")
    print ("[3] Multi Points in YAML \n")
    Mode = int(input("[Enter] Mode Number:\n"))
    while mode_flag ==0:
        if Mode ==1:
            mode_flag =1
        elif Mode ==2:
            mode_flag =1
        elif Mode ==3:
            mode_flag =1
        else:
            print ("[ERROR] Wrong Number\n")
            Mode = int(input("[Enter] Mode Number:\n"))
            mode_flag =0

    while Mode == 1 and not rospy.is_shutdown():
        rospy.sleep(1)
        

    while Mode ==2 and not rospy.is_shutdown():
        print("[RVIZ] Waiting Points And Enter [o] To Over\n")
        points_overflag=0
        on_circle = 0 
        on_circle = input("[Enter] [1]Circle [0]No Circle\n")
        dis_tolen = 0.1
        dis_tolen = input("[Enter] Tolerate Distance\n")
        Interval_time = 0
        Interval_time = input("[Enter] Interval Time\n")
        over_flag = 0
        while points_overflag == 0:
            if len(clicked_point_list)>=3:
                    print("[Point]Total: %d  Points \n"%(len(clicked_point_list)))
                    points_overflag = 1
            else:
                    print("[Point]Points less than 2")
        while over_flag == 0:
            for i in range(len(clicked_point_list)):
                # nav_to(clicked_point_list[i][0],clicked_point_list[i][1],0)
                # while not reach_point(clicked_point_list[i][0],clicked_point_list[i][1],dis_tolen) :
                #     rate_nav.sleep()
                Goto_point(clicked_point_list[i][0],clicked_point_list[i][1],dis_tolen,15)
                rospy.sleep(Interval_time)
                print ("[INFO]Reach point:%d\n",i)

            if on_circle==0:
                over_flag=1
                clicked_point_list =[]
                break

    while Mode ==3 and not rospy.is_shutdown():
        nav_to_place("B1")
        nav_to_place("B2")
        nav_to_place("B3")
        break
    
    print("OVER")




            
        
        


    
