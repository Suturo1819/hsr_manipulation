# Install script for directory: /home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install" TYPE PROGRAM FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install" TYPE PROGRAM FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install" TYPE FILE FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install" TYPE FILE FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install" TYPE FILE FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install" TYPE FILE FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/giskard_msgs/msg" TYPE FILE FILES
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/giskard_msgs/srv" TYPE FILE FILES
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/giskard_msgs/action" TYPE FILE FILES
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/action/ControllerList.action"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/action/Move.action"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/action/WholeBody.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/giskard_msgs/msg" TYPE FILE FILES
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/giskard_msgs/msg" TYPE FILE FILES
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/giskard_msgs/msg" TYPE FILE FILES
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/giskard_msgs/cmake" TYPE FILE FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/giskard_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/include/giskard_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/roseus/ros/giskard_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/common-lisp/ros/giskard_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/gennodejs/ros/giskard_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/lib/python2.7/dist-packages/giskard_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/lib/python2.7/dist-packages/giskard_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/giskard_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/giskard_msgs/cmake" TYPE FILE FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/giskard_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/giskard_msgs/cmake" TYPE FILE FILES
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/giskard_msgsConfig.cmake"
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/catkin_generated/installspace/giskard_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/giskard_msgs" TYPE FILE FILES "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskard_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
