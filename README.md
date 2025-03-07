# SLAMTEC LIDAR ROS2 Package

ROS2 node for SLAMTEC LIDAR

Visit following Website for more details about SLAMTEC LIDAR:

SLAMTEC LIDAR roswiki: <http://wiki.ros.org/rplidar>

SLAMTEC LIDAR HomePage: <http://www.slamtec.com/en/Lidar>

SLAMTEC LIDAR SDK: <https://github.com/Slamtec/rplidar_sdk>

SLAMTEC LIDAR Tutorial: <https://github.com/robopeak/rplidar_ros/wiki>

## SmartDrive project SLAMTEC LIDAR

| Lidar Model | **|RPLIDAR S2|**

## Compile & Install sllidar_ros2 package

1. Clone sllidar_ros2 package from github

   Ensure you're still in the ros2_ws/src directory before you clone:

   ```bash
   git clone https://github.com/SmartDrive-UniPi/sllidar_ros2.git
   ``` 

2. Create udev rules for rplidar

   sllidar_ros2 running requires the read and write permissions of the serial device.
   You can manually modify it with the following command:

   ***[OBSOLETE]***
   ```bash
   sudo chmod 777 /dev/ttyUSB0
   ```

   But a better way is to create a udev rule:

   ```bash
   cd src/rpldiar_ros/
   source scripts/create_udev_rules.sh
   ```

   ***[NEW] Coming soon ...***
   ```bash
   sudo bash setup_udev_sensors.sh
   ```



## Run sllidar_ros2

### Run sllidar node and view in the rviz (DEBUG PURPOSE ONLY)
```bash
ros2 launch sllidar_ros2 view_sllidar_s2_launch.py
```

### Simple run sllidar node
```bash
ros2 launch sllidar_ros2 sllidar_s2_launch.py
```



## RPLIDAR frame

RPLIDAR frame must be broadcasted according to picture shown in rplidar-frame.png
