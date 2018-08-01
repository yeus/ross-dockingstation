#!/bin/bash 
#https://github.com/ros2/ros2/wiki/Linux-Development-Setup

mkdir -p ~/ros2_ws/src
cd ~/ros2_ws
#wget https://raw.githubusercontent.com/ros2/ros2/release-latest/ros2.repos
mv /tmp/ros2.repos ~/ros2_ws
vcs import src < ros2.repos

#apt install -q -y rti-connext-dds-5.3.1  # from repo.ros2.org
#cd /opt/rti.com/rti_connext_dds-5.3.1/resource/scripts && source ./rtisetenv_x64Linux3gcc5.4.0.bash; cd -

rosdep init
rosdep update
#rosdep install --from-paths src --ignore-src --rosdistro bouncy -y --skip-keys "console_bridge fastcdr fastrtps libopensplice67 rti-connext-dds-5.3.1 urdfdom_headers"
rosdep install --from-paths src --ignore-src --rosdistro bouncy -y --skip-keys "console_bridge fastcdr fastrtps libopensplice67 rti-connext-dds-5.3.1 urdfdom_headers"


cd ~/ros2_ws/
colcon build --symlink-install
