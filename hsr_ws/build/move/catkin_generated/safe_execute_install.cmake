execute_process(COMMAND "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/move/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/move/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
