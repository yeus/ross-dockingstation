#!/bin/bash
set -e

# setup ros2 environment
source "$ROS2_WS/install/local_setup.bash"
# This allows to run any command
exec "$@"