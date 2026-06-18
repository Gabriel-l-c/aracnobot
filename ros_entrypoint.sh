#!/bin/bash

set -e

if [ -f /opt/ros/humble/setup.bash ]; then
    source /opt/ros/humble/setup.bash
else
    echo "Warning: /opt/ros/humble/setup.bash not found!"
fi

if [ -f "/ros2_ws/install/setup.bash" ]; then
    source /ros2_ws/install/setup.bash
    echo "Workspace sourced."
else
    echo "Workspace not found, skipping..."
fi

exec "$@"