#!/bin/bash 

ROS_DISTRO=ardent

#apt update && apt install -y curl
apt-get install -y lsb-release curl
curl http://repo.ros2.org/repos.key | apt-key add -

sh -c 'echo "deb [arch=amd64,arm64] http://repo.ros2.org/ubuntu/main `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
#sh -c 'echo "deb [arch=amd64,arm64] http://repo.ros2.org/ubuntu/main xenial main" > /etc/apt/sources.list.d/ros2-latest.list'

apt-get update

#apt-get install -y `apt list "ros-$ROS_DISTRO-*" 2> /dev/null | \
#  grep '/' | awk -F/ '{print $1}' | \
#  grep -v -e ros-$ROS_DISTRO-ros1-bridge \
#  -e ros-$ROS_DISTRO-turtlebot2- \
#  -e "ros-$ROS_DISTRO.*-dbgsym"
#  -e "ros-$ROS_DISTRO-.*opensplice" \
#  -e "ros-$ROS_DISTRO-.*connext" | tr '\n' ' '`

#has to be apt, because only apt has the "list" command
apt install -y `apt list "ros-$ROS_DISTRO-*" 2> /dev/null | \
  grep '/' | awk -F/ '{print $1}' | \
  grep -v -e ros-$ROS_DISTRO-ros1-bridge \
  -e ros-$ROS_DISTRO-turtlebot2- \
  -e "ros-$ROS_DISTRO.*-dbgsym"`
  
  
#echo `apt list "ros-$ROS_DISTRO-*" 2> /dev/null | \
#  grep '/' | awk -F/ '{print $1}' | \
#  grep -v -e ros-$ROS_DISTRO-ros1-bridge \
#  -e ros-$ROS_DISTRO-turtlebot2- \
#  -e "ros-$ROS_DISTRO.*-dbgsym"`
