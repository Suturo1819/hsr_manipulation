# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "giskard_msgs: 39 messages, 3 services")

set(MSG_I_FLAGS "-Igiskard_msgs:/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg;-Igiskard_msgs:/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/kinetic/share/shape_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(giskard_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg" ""
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:giskard_msgs/Controller:sensor_msgs/JointState:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:giskard_msgs/ControllerListGoal:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:giskard_msgs/TaskObject"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg" "giskard_msgs/MoveResult:std_msgs/Header:trajectory_msgs/JointTrajectory:trajectory_msgs/JointTrajectoryPoint:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg" "geometry_msgs/PoseStamped:std_msgs/Header:giskard_msgs/Controller:sensor_msgs/JointState:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:giskard_msgs/CollisionEntry:actionlib_msgs/GoalID:giskard_msgs/MoveCmd:giskard_msgs/MoveGoal"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:giskard_msgs/SemanticFloat64:giskard_msgs/ArmCommand:giskard_msgs/WholeBodyCommand:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:sensor_msgs/JointState"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg" "shape_msgs/SolidPrimitive"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg" ""
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg" "geometry_msgs/PoseStamped:std_msgs/Header:giskard_msgs/SemanticVector3:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:giskard_msgs/ArmCommand:geometry_msgs/Pose:giskard_msgs/SemanticFloat64:giskard_msgs/WholeBodyCommand:sensor_msgs/JointState"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg" "giskard_msgs/ControllerListResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg" "giskard_msgs/MoveFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg" ""
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg" "giskard_msgs/SemanticFloat64"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg" ""
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg" "std_msgs/Header:giskard_msgs/SemanticBool:giskard_msgs/WholeBodyFeedback:giskard_msgs/SemanticFloat64:giskard_msgs/WholeBodyState:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg" ""
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg" ""
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg" ""
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg" "giskard_msgs/ControllerListResult:geometry_msgs/PoseStamped:std_msgs/Header:giskard_msgs/Controller:sensor_msgs/JointState:geometry_msgs/Quaternion:giskard_msgs/ControllerListFeedback:geometry_msgs/Point:giskard_msgs/ControllerListActionFeedback:geometry_msgs/Pose:giskard_msgs/ControllerListGoal:giskard_msgs/ControllerListActionGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:giskard_msgs/ControllerListActionResult"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg" "giskard_msgs/MoveResult:geometry_msgs/PoseStamped:std_msgs/Header:giskard_msgs/Controller:sensor_msgs/JointState:geometry_msgs/Quaternion:giskard_msgs/MoveActionResult:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Point:giskard_msgs/MoveActionFeedback:giskard_msgs/MoveActionGoal:geometry_msgs/Pose:giskard_msgs/MoveFeedback:trajectory_msgs/JointTrajectory:giskard_msgs/CollisionEntry:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:giskard_msgs/MoveCmd:giskard_msgs/MoveGoal"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg" "giskard_msgs/Constraint"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg" "giskard_msgs/SemanticFloat64:giskard_msgs/SemanticBool:giskard_msgs/WholeBodyState:std_msgs/Header"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv" ""
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:giskard_msgs/SemanticFloat64:giskard_msgs/ArmCommand:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv" "giskard_msgs/Task:geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:giskard_msgs/Constraint:giskard_msgs/MotionPhase:geometry_msgs/Pose:giskard_msgs/TaskObject"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg" "giskard_msgs/SemanticFloat64:giskard_msgs/SemanticBool:giskard_msgs/WholeBodyState:std_msgs/Header"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg" "geometry_msgs/PoseStamped:std_msgs/Header:giskard_msgs/Controller:sensor_msgs/JointState:geometry_msgs/Quaternion:geometry_msgs/Point:giskard_msgs/CollisionEntry:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg" "giskard_msgs/ControllerListFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg" "geometry_msgs/PoseStamped:std_msgs/Header:giskard_msgs/Controller:sensor_msgs/JointState:geometry_msgs/Quaternion:geometry_msgs/Point:giskard_msgs/CollisionEntry:geometry_msgs/Pose:giskard_msgs/MoveCmd"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg" "giskard_msgs/WholeBodyResult:std_msgs/Header:giskard_msgs/SemanticBool:giskard_msgs/SemanticFloat64:giskard_msgs/WholeBodyState:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg" "trajectory_msgs/JointTrajectoryPoint:std_msgs/Header:trajectory_msgs/JointTrajectory"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg" ""
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg" "giskard_msgs/WholeBodyActionResult:geometry_msgs/PoseStamped:std_msgs/Header:giskard_msgs/WholeBodyActionFeedback:geometry_msgs/Quaternion:giskard_msgs/SemanticBool:giskard_msgs/WholeBodyGoal:geometry_msgs/Point:giskard_msgs/WholeBodyFeedback:giskard_msgs/SemanticFloat64:giskard_msgs/WholeBodyActionGoal:geometry_msgs/Pose:giskard_msgs/ArmCommand:giskard_msgs/WholeBodyResult:giskard_msgs/WholeBodyCommand:actionlib_msgs/GoalID:giskard_msgs/WholeBodyState:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:giskard_msgs/WholeBodyGoal:geometry_msgs/Point:giskard_msgs/SemanticFloat64:geometry_msgs/Pose:giskard_msgs/ArmCommand:giskard_msgs/WholeBodyCommand:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg" "giskard_msgs/SemanticFloat64:giskard_msgs/SemanticBool:std_msgs/Header"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg" ""
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:giskard_msgs/SemanticFloat64:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv" "giskard_msgs/WorldBody:geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:shape_msgs/SolidPrimitive:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg" NAME_WE)
add_custom_target(_giskard_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "giskard_msgs" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg" "geometry_msgs/PoseStamped:std_msgs/Header:giskard_msgs/Controller:sensor_msgs/JointState:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)

### Generating Services
_generate_srv_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_srv_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)
_generate_srv_cpp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
)

### Generating Module File
_generate_module_cpp(giskard_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(giskard_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(giskard_msgs_generate_messages giskard_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_cpp _giskard_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(giskard_msgs_gencpp)
add_dependencies(giskard_msgs_gencpp giskard_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS giskard_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_msg_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)

### Generating Services
_generate_srv_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_srv_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)
_generate_srv_eus(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
)

### Generating Module File
_generate_module_eus(giskard_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(giskard_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(giskard_msgs_generate_messages giskard_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_eus _giskard_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(giskard_msgs_geneus)
add_dependencies(giskard_msgs_geneus giskard_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS giskard_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_msg_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)

### Generating Services
_generate_srv_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_srv_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)
_generate_srv_lisp(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
)

### Generating Module File
_generate_module_lisp(giskard_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(giskard_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(giskard_msgs_generate_messages giskard_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_lisp _giskard_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(giskard_msgs_genlisp)
add_dependencies(giskard_msgs_genlisp giskard_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS giskard_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_msg_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)

### Generating Services
_generate_srv_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_srv_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)
_generate_srv_nodejs(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
)

### Generating Module File
_generate_module_nodejs(giskard_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(giskard_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(giskard_msgs_generate_messages giskard_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_nodejs _giskard_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(giskard_msgs_gennodejs)
add_dependencies(giskard_msgs_gennodejs giskard_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS giskard_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_msg_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)

### Generating Services
_generate_srv_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_srv_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)
_generate_srv_py(giskard_msgs
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv"
  "${MSG_I_FLAGS}"
  "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
)

### Generating Module File
_generate_module_py(giskard_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(giskard_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(giskard_msgs_generate_messages giskard_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Constraint.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Task.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Controller.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/TaskObject.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WorldBody.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticBool.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64Array.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Dummy.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/Finished.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MotionPhase.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticVector3.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/SetEnable.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyCommand.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/QueryMotion.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/MoveCmd.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListActionFeedback.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/MoveResult.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/CollisionEntry.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyAction.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/WholeBodyActionGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/WholeBodyState.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/SemanticFloat64.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/msg/ArmCommand.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskard_msgs/srv/UpdateWorld.srv" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/devel/.private/giskard_msgs/share/giskard_msgs/msg/ControllerListGoal.msg" NAME_WE)
add_dependencies(giskard_msgs_generate_messages_py _giskard_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(giskard_msgs_genpy)
add_dependencies(giskard_msgs_genpy giskard_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS giskard_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/giskard_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(giskard_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(giskard_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(giskard_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(giskard_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(giskard_msgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()
if(TARGET shape_msgs_generate_messages_cpp)
  add_dependencies(giskard_msgs_generate_messages_cpp shape_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/giskard_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(giskard_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(giskard_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(giskard_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(giskard_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(giskard_msgs_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()
if(TARGET shape_msgs_generate_messages_eus)
  add_dependencies(giskard_msgs_generate_messages_eus shape_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/giskard_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(giskard_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(giskard_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(giskard_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(giskard_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(giskard_msgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()
if(TARGET shape_msgs_generate_messages_lisp)
  add_dependencies(giskard_msgs_generate_messages_lisp shape_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/giskard_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(giskard_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(giskard_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(giskard_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(giskard_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(giskard_msgs_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()
if(TARGET shape_msgs_generate_messages_nodejs)
  add_dependencies(giskard_msgs_generate_messages_nodejs shape_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/giskard_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(giskard_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(giskard_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(giskard_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(giskard_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(giskard_msgs_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
if(TARGET shape_msgs_generate_messages_py)
  add_dependencies(giskard_msgs_generate_messages_py shape_msgs_generate_messages_py)
endif()
