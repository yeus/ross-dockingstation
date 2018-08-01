#!/bin/bash
set -e

# setup ros2 environment
source $ROS2_WS/setup.bash     
source $ROS2_WS/install/ros2cli/share/ros2cli/environment/ros2-argcomplete.bash     
exec "$@"