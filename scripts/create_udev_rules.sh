#!/bin/bash

# echo "Remap the device serial port (ttyUSBX) to rplidar"
# echo "rplidar USB connection as /dev/rplidar, check it using: ls -l /dev | grep ttyUSB"
# echo "Copying rplidar.rules to /etc/udev/rules.d/"

# Determine the directory where this script is located.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

sudo cp "${SCRIPT_DIR}/rplidar.rules" /etc/udev/rules.d/

# echo ""
# echo "Reloading udev rules..."
sudo udevadm control --reload
sudo udevadm trigger

# echo "Finished."
