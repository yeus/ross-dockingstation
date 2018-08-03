#!/bin/bash 

mkdir -p ~/ros2_ws/src
cd ~/ros2_ws
#wget https://raw.githubusercontent.com/ros2/ros2/release-latest/ros2.repos
mv /tmp/ros2_iboss.repos ~/ros2_ws
vcs import src < ros2_iboss.repos


rosdep init
rosdep update
#rosdep install --from-paths src --ignore-src --rosdistro bouncy -y --skip-keys "console_bridge fastcdr fastrtps libopensplice67 rti-connext-dds-5.3.1 urdfdom_headers"
rosdep install --from-paths src --ignore-src --rosdistro bouncy -y --skip-keys "console_bridge fastcdr fastrtps libopensplice67 rti-connext-dds-5.3.1 urdfdom_headers"



cd ~/ros2_ws/
#ament build --cmake-args -DSECURITY=ON --no-warn-unused-cli --symlink-install
colcon build --symlink-install
