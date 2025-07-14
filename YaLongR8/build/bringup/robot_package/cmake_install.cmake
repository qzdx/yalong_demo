# Install script for directory: /home/nvidia/YaLongR8/src/bringup/robot_package

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nvidia/YaLongR8/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_package/msg" TYPE FILE FILES
    "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Arm_Msg.msg"
    "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_Msg.msg"
    "/home/nvidia/YaLongR8/src/bringup/robot_package/msg/TR_Vehicle_IMU_Msg.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_package/srv" TYPE FILE FILES
    "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveABSJ.srv"
    "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveJ.srv"
    "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/MoveL.srv"
    "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Servo.srv"
    "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/Claw.srv"
    "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleCommModel.srv"
    "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleServo.srv"
    "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/VehicleControl.srv"
    "/home/nvidia/YaLongR8/src/bringup/robot_package/srv/ImageToFrame.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_package/action" TYPE FILE FILES "/home/nvidia/YaLongR8/src/bringup/robot_package/action/MoveABSJ.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_package/msg" TYPE FILE FILES
    "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJAction.msg"
    "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionGoal.msg"
    "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionResult.msg"
    "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJActionFeedback.msg"
    "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJGoal.msg"
    "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJResult.msg"
    "/home/nvidia/YaLongR8/devel/share/robot_package/msg/MoveABSJFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_package/cmake" TYPE FILE FILES "/home/nvidia/YaLongR8/build/bringup/robot_package/catkin_generated/installspace/robot_package-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nvidia/YaLongR8/devel/include/robot_package")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nvidia/YaLongR8/devel/share/roseus/ros/robot_package")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nvidia/YaLongR8/devel/share/common-lisp/ros/robot_package")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nvidia/YaLongR8/devel/share/gennodejs/ros/robot_package")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/nvidia/YaLongR8/devel/lib/python2.7/dist-packages/robot_package")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nvidia/YaLongR8/devel/lib/python2.7/dist-packages/robot_package")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nvidia/YaLongR8/build/bringup/robot_package/catkin_generated/installspace/robot_package.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_package/cmake" TYPE FILE FILES "/home/nvidia/YaLongR8/build/bringup/robot_package/catkin_generated/installspace/robot_package-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_package/cmake" TYPE FILE FILES
    "/home/nvidia/YaLongR8/build/bringup/robot_package/catkin_generated/installspace/robot_packageConfig.cmake"
    "/home/nvidia/YaLongR8/build/bringup/robot_package/catkin_generated/installspace/robot_packageConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_package" TYPE FILE FILES "/home/nvidia/YaLongR8/src/bringup/robot_package/package.xml")
endif()

