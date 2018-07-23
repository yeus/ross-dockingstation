#!/bin/bash 

mkdir -p ~/ros2_ws/src
cd ~/ros2_ws
#wget https://raw.githubusercontent.com/ros2/ros2/release-latest/ros2.repos
vcs import src < ros2.repos

rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro bouncy -y --skip-keys "console_bridge fastcdr fastrtps libopensplice67 rti-connext-dds-5.3.1 urdfdom_headers"

cd ~/ros2_ws/
colcon build --symlink-install
