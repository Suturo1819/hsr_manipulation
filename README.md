# hsr_manipulation

## Setup

#### Workspace setup with repositories

Create new workspace

```
mkdir -p manipulation_ws/src
cd manipulation_ws
catkin build
```

Initialise wstool

```
cd src
wstool init
```

If this is a **standalone installation**, visit [the rosinstall file](https://raw.githubusercontent.com/Suturo1819/hsr_manipulation/master/dependencies.rosinstall), copy the content into your local `.rosinstall` file and uncomment the section at the bottom.

If your are using our locally **shared common dependencies** (on the Alienware), do this:

```
cd src
wstool init
wstool merge https://raw.githubusercontent.com/Suturo1819/hsr_manipulation/master/dependencies.rosinstall
```

Clone the repos with

```
wstool update
```

#### Install the symengine

If you are **reinstalling** the symengine, you must delete the previous data, since it won't be updated:

```
cd /usr/local/lib/python2.7/dist-packages/
sudo rm -r symengine*
cd /usr/local/include
sudo rm -r symengine
bash
```

Now get back to the workspace from above and install symengine:

```
cd symengine
git checkout `cat ../symengine.py/symengine_version.txt`
cmake -DBUILD_SHARED_LIBS:BOOL=ON -DWITH_LLVM:BOOL=ON .
make
sudo make install
cd ../symengine.py
sudo python setup.py install
```

Install pybullet:

```
sudo pip install pybullet
```

#### Install missing rosdep packages

```
source /opt/ros/kinetic/setup.bash # !! or the shared deps workspace in ~/suturo/general_deps/setup.bash
rosdep update
cd src
rosdep install --ignore-src --from-paths . # note the dot at the end!
```

#### Build your workspace

```
cd /path/to/your/workspace
catkin build
source devel/setup.bash
```

It's convenient to put the source path into your `.bashrc`.

## Run the Action server

In one terminal, run this and wait a sec:

```
roslaunch move giskardpy_hsr.launch
```

In another terminal, run the server:

```
roslaunch move move_server.launch
```

#### Test

```
rosrun move hsr_move_joint_client_test.py
```

