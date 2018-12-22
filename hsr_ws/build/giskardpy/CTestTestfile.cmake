# CMake generated Testfile for 
# Source directory: /home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskardpy
# Build directory: /home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskardpy
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_giskardpy_nosetests_test "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskardpy/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskardpy/test_results/giskardpy/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskardpy/test_results/giskardpy" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/giskardpy/test --with-xunit --xunit-file=/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/giskardpy/test_results/giskardpy/nosetests-test.xml")
subdirs(gtest)
