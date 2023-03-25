# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rmep_msgs: 3 messages, 4 services")

set(MSG_I_FLAGS "-Irmep_msgs:/home/rmep/rmep_ws/src/rmep_msgs/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rmep_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg" NAME_WE)
add_custom_target(_rmep_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rmep_msgs" "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg" ""
)

get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg" NAME_WE)
add_custom_target(_rmep_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rmep_msgs" "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg" ""
)

get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg" NAME_WE)
add_custom_target(_rmep_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rmep_msgs" "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg" ""
)

get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv" NAME_WE)
add_custom_target(_rmep_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rmep_msgs" "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv" ""
)

get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv" NAME_WE)
add_custom_target(_rmep_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rmep_msgs" "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv" ""
)

get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv" NAME_WE)
add_custom_target(_rmep_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rmep_msgs" "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv" ""
)

get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv" NAME_WE)
add_custom_target(_rmep_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rmep_msgs" "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rmep_msgs
)
_generate_msg_cpp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rmep_msgs
)
_generate_msg_cpp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rmep_msgs
)

### Generating Services
_generate_srv_cpp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rmep_msgs
)
_generate_srv_cpp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rmep_msgs
)
_generate_srv_cpp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rmep_msgs
)
_generate_srv_cpp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rmep_msgs
)

### Generating Module File
_generate_module_cpp(rmep_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rmep_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rmep_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rmep_msgs_generate_messages rmep_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_cpp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_cpp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_cpp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_cpp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_cpp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_cpp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_cpp _rmep_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rmep_msgs_gencpp)
add_dependencies(rmep_msgs_gencpp rmep_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rmep_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rmep_msgs
)
_generate_msg_eus(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rmep_msgs
)
_generate_msg_eus(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rmep_msgs
)

### Generating Services
_generate_srv_eus(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rmep_msgs
)
_generate_srv_eus(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rmep_msgs
)
_generate_srv_eus(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rmep_msgs
)
_generate_srv_eus(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rmep_msgs
)

### Generating Module File
_generate_module_eus(rmep_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rmep_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rmep_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rmep_msgs_generate_messages rmep_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_eus _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_eus _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_eus _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_eus _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_eus _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_eus _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_eus _rmep_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rmep_msgs_geneus)
add_dependencies(rmep_msgs_geneus rmep_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rmep_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rmep_msgs
)
_generate_msg_lisp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rmep_msgs
)
_generate_msg_lisp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rmep_msgs
)

### Generating Services
_generate_srv_lisp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rmep_msgs
)
_generate_srv_lisp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rmep_msgs
)
_generate_srv_lisp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rmep_msgs
)
_generate_srv_lisp(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rmep_msgs
)

### Generating Module File
_generate_module_lisp(rmep_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rmep_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rmep_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rmep_msgs_generate_messages rmep_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_lisp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_lisp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_lisp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_lisp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_lisp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_lisp _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_lisp _rmep_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rmep_msgs_genlisp)
add_dependencies(rmep_msgs_genlisp rmep_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rmep_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rmep_msgs
)
_generate_msg_nodejs(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rmep_msgs
)
_generate_msg_nodejs(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rmep_msgs
)

### Generating Services
_generate_srv_nodejs(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rmep_msgs
)
_generate_srv_nodejs(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rmep_msgs
)
_generate_srv_nodejs(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rmep_msgs
)
_generate_srv_nodejs(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rmep_msgs
)

### Generating Module File
_generate_module_nodejs(rmep_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rmep_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rmep_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rmep_msgs_generate_messages rmep_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_nodejs _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_nodejs _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_nodejs _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_nodejs _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_nodejs _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_nodejs _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_nodejs _rmep_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rmep_msgs_gennodejs)
add_dependencies(rmep_msgs_gennodejs rmep_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rmep_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs
)
_generate_msg_py(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs
)
_generate_msg_py(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs
)

### Generating Services
_generate_srv_py(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs
)
_generate_srv_py(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs
)
_generate_srv_py(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs
)
_generate_srv_py(rmep_msgs
  "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs
)

### Generating Module File
_generate_module_py(rmep_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rmep_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rmep_msgs_generate_messages rmep_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalFdb.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_py _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_py _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/msg/GimbalCmd_ab.msg" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_py _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotArm.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_py _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotGrip.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_py _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotPwm.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_py _rmep_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rmep/rmep_ws/src/rmep_msgs/srv/RobotBlaster.srv" NAME_WE)
add_dependencies(rmep_msgs_generate_messages_py _rmep_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rmep_msgs_genpy)
add_dependencies(rmep_msgs_genpy rmep_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rmep_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rmep_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rmep_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(rmep_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rmep_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rmep_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rmep_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(rmep_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rmep_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rmep_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rmep_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(rmep_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rmep_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rmep_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rmep_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(rmep_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rmep_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rmep_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(rmep_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rmep_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
