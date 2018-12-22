# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "iai_naive_kinematics_sim: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iiai_naive_kinematics_sim:/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(iai_naive_kinematics_sim_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv" NAME_WE)
add_custom_target(_iai_naive_kinematics_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_naive_kinematics_sim" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv" "sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg" NAME_WE)
add_custom_target(_iai_naive_kinematics_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_naive_kinematics_sim" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(iai_naive_kinematics_sim
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_naive_kinematics_sim
)

### Generating Services
_generate_srv_cpp(iai_naive_kinematics_sim
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_naive_kinematics_sim
)

### Generating Module File
_generate_module_cpp(iai_naive_kinematics_sim
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_naive_kinematics_sim
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(iai_naive_kinematics_sim_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(iai_naive_kinematics_sim_generate_messages iai_naive_kinematics_sim_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv" NAME_WE)
add_dependencies(iai_naive_kinematics_sim_generate_messages_cpp _iai_naive_kinematics_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg" NAME_WE)
add_dependencies(iai_naive_kinematics_sim_generate_messages_cpp _iai_naive_kinematics_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_naive_kinematics_sim_gencpp)
add_dependencies(iai_naive_kinematics_sim_gencpp iai_naive_kinematics_sim_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_naive_kinematics_sim_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(iai_naive_kinematics_sim
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_naive_kinematics_sim
)

### Generating Services
_generate_srv_eus(iai_naive_kinematics_sim
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_naive_kinematics_sim
)

### Generating Module File
_generate_module_eus(iai_naive_kinematics_sim
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_naive_kinematics_sim
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(iai_naive_kinematics_sim_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(iai_naive_kinematics_sim_generate_messages iai_naive_kinematics_sim_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv" NAME_WE)
add_dependencies(iai_naive_kinematics_sim_generate_messages_eus _iai_naive_kinematics_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg" NAME_WE)
add_dependencies(iai_naive_kinematics_sim_generate_messages_eus _iai_naive_kinematics_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_naive_kinematics_sim_geneus)
add_dependencies(iai_naive_kinematics_sim_geneus iai_naive_kinematics_sim_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_naive_kinematics_sim_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(iai_naive_kinematics_sim
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_naive_kinematics_sim
)

### Generating Services
_generate_srv_lisp(iai_naive_kinematics_sim
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_naive_kinematics_sim
)

### Generating Module File
_generate_module_lisp(iai_naive_kinematics_sim
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_naive_kinematics_sim
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(iai_naive_kinematics_sim_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(iai_naive_kinematics_sim_generate_messages iai_naive_kinematics_sim_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv" NAME_WE)
add_dependencies(iai_naive_kinematics_sim_generate_messages_lisp _iai_naive_kinematics_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg" NAME_WE)
add_dependencies(iai_naive_kinematics_sim_generate_messages_lisp _iai_naive_kinematics_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_naive_kinematics_sim_genlisp)
add_dependencies(iai_naive_kinematics_sim_genlisp iai_naive_kinematics_sim_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_naive_kinematics_sim_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(iai_naive_kinematics_sim
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_naive_kinematics_sim
)

### Generating Services
_generate_srv_nodejs(iai_naive_kinematics_sim
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_naive_kinematics_sim
)

### Generating Module File
_generate_module_nodejs(iai_naive_kinematics_sim
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_naive_kinematics_sim
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(iai_naive_kinematics_sim_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(iai_naive_kinematics_sim_generate_messages iai_naive_kinematics_sim_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv" NAME_WE)
add_dependencies(iai_naive_kinematics_sim_generate_messages_nodejs _iai_naive_kinematics_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg" NAME_WE)
add_dependencies(iai_naive_kinematics_sim_generate_messages_nodejs _iai_naive_kinematics_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_naive_kinematics_sim_gennodejs)
add_dependencies(iai_naive_kinematics_sim_gennodejs iai_naive_kinematics_sim_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_naive_kinematics_sim_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(iai_naive_kinematics_sim
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_naive_kinematics_sim
)

### Generating Services
_generate_srv_py(iai_naive_kinematics_sim
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_naive_kinematics_sim
)

### Generating Module File
_generate_module_py(iai_naive_kinematics_sim
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_naive_kinematics_sim
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(iai_naive_kinematics_sim_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(iai_naive_kinematics_sim_generate_messages iai_naive_kinematics_sim_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/srv/SetJointState.srv" NAME_WE)
add_dependencies(iai_naive_kinematics_sim_generate_messages_py _iai_naive_kinematics_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/iai_naive_kinematics_sim/msg/ProjectionClock.msg" NAME_WE)
add_dependencies(iai_naive_kinematics_sim_generate_messages_py _iai_naive_kinematics_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_naive_kinematics_sim_genpy)
add_dependencies(iai_naive_kinematics_sim_genpy iai_naive_kinematics_sim_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_naive_kinematics_sim_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_naive_kinematics_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_naive_kinematics_sim
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(iai_naive_kinematics_sim_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_naive_kinematics_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_naive_kinematics_sim
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(iai_naive_kinematics_sim_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_naive_kinematics_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_naive_kinematics_sim
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(iai_naive_kinematics_sim_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_naive_kinematics_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_naive_kinematics_sim
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(iai_naive_kinematics_sim_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_naive_kinematics_sim)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_naive_kinematics_sim\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_naive_kinematics_sim
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(iai_naive_kinematics_sim_generate_messages_py sensor_msgs_generate_messages_py)
endif()
