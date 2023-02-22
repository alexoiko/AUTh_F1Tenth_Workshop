#!/bin/bash
echo " "
echo " >>>>>> This is the beginning of the script for the installation of ROS and F1/10 simulator."
# ROS installation 
echo " "
echo " >>>>>> Setup source list, keys"
echo " "
sudo apt -y install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt -y update
echo " "
echo " >>>>>> Install ROS Melodic & Dependencies"
echo " "
sudo apt -y install ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt -y install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential #python-roslaunch
sudo rosdep init 
rosdep update
echo " "
echo " >>>>>> Install F1/10 Simulator"
echo " "
sudo apt -y install ros-melodic-tf2-geometry-msgs ros-melodic-ackermann-msgs ros-melodic-joy ros-melodic-map-server
##turtesim — already installed #sudo apt -y install ros-melodic-turtlesim
mkdir -p ~/catkin_ws/src 
cd ~/catkin_ws/src 
catkin_init_workspace
git clone https://github.com/f1tenth/f1tenth_simulator.git
#git clone https://github.com/mit-racecar/particle_filter
#git clone https://github.com/kctess5/range_libc
#git clone https://github.com/tu-darmstadt-ros-pkg/hector_slam
cd ~/catkin_ws catkin_make
#install source devel/setup.bash echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
echo " "
echo "Run F1/10 Simulator"
echo " "
roslaunch f1tenth_simulator simulator.launch
