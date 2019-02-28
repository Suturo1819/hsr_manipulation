# Install and Run Move

**Be sure you have installed Giskard and his dependencies**

  [Giskard](https://github.com/SemRoCo/giskardpy)


---
1. Start Giskard
  roslaunch move giskardpy_hsr.launch


---
2. Start server
  rosrun move hsr_move_joints.py
  or
  roslaunch move move_server.launch
---
Test server:

Show file
src/move/hsr_move_joint_client_test.py

