# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_package: 10 messages, 9 services")

set(MSG_I_FLAGS "-Irobot_package:/home/nvidia/YaLongR8/src/bringup/robot_package/msg;-Irobot_package:/home/nvidia/YaLongR8/devel/share/robot_package/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg" "actionlib_msgs/GoalID:robot_package/MoveABSJActionGoal:actionlib_msgs/GoalStatus:std_msgs/Header:robot_package/MoveABSJActionResult:robot_package/MoveABSJActionFeedback:robot_package/MoveABSJGoal:robot_package/MoveABSJResult:robot_package/MoveABSJFeedback"
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg" "robot_package/MoveABSJFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:robot_package/MoveABSJResult:std_msgs/Header"
)

get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv" ""
)

get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg" NAME_WE)
add_custom_target(_robot_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_package" "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg" "actionlib_msgs/GoalID:robot_package/MoveABSJGoal:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_msg_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_msg_cpp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_msg_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_msg_cpp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_msg_cpp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_msg_cpp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_msg_cpp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_msg_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_msg_cpp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)

### Generating Services
_generate_srv_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_srv_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_srv_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_srv_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_srv_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_srv_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_srv_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_srv_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)
_generate_srv_cpp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
)

### Generating Module File
_generate_module_cpp(robot_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_package_generate_messages robot_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_cpp _robot_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_package_gencpp)
add_dependencies(robot_package_gencpp robot_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_msg_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_msg_eus(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_msg_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_msg_eus(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_msg_eus(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_msg_eus(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_msg_eus(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_msg_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_msg_eus(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)

### Generating Services
_generate_srv_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_srv_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_srv_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_srv_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_srv_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_srv_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_srv_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_srv_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)
_generate_srv_eus(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
)

### Generating Module File
_generate_module_eus(robot_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_package_generate_messages robot_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_eus _robot_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_package_geneus)
add_dependencies(robot_package_geneus robot_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_msg_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_msg_lisp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_msg_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_msg_lisp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_msg_lisp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_msg_lisp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_msg_lisp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_msg_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_msg_lisp(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)

### Generating Services
_generate_srv_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_srv_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_srv_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_srv_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_srv_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_srv_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_srv_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_srv_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)
_generate_srv_lisp(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
)

### Generating Module File
_generate_module_lisp(robot_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_package_generate_messages robot_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_lisp _robot_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_package_genlisp)
add_dependencies(robot_package_genlisp robot_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_msg_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_msg_nodejs(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_msg_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_msg_nodejs(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_msg_nodejs(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_msg_nodejs(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_msg_nodejs(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_msg_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_msg_nodejs(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)

### Generating Services
_generate_srv_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_srv_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_srv_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_srv_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_srv_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_srv_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_srv_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_srv_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)
_generate_srv_nodejs(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
)

### Generating Module File
_generate_module_nodejs(robot_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_package_generate_messages robot_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_nodejs _robot_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_package_gennodejs)
add_dependencies(robot_package_gennodejs robot_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_msg_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_msg_py(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_msg_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_msg_py(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_msg_py(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_msg_py(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_msg_py(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_msg_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_msg_py(robot_package
  "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)

### Generating Services
_generate_srv_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_srv_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_srv_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_srv_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_srv_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_srv_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_srv_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_srv_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)
_generate_srv_py(robot_package
  "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
)

### Generating Module File
_generate_module_py(robot_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_package_generate_messages robot_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg" NAME_WE)
add_dependencies(robot_package_generate_messages_py _robot_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_package_genpy)
add_dependencies(robot_package_genpy robot_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robot_package_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(robot_package_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robot_package_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(robot_package_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robot_package_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(robot_package_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robot_package_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(robot_package_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robot_package_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_package_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(robot_package_generate_messages_py sensor_msgs_generate_messages_py)
endif()
