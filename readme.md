## Prequisites needed

``` bash
sudo apt-get update
sudo apt-get upgrade
```
If return some errors run this command, else skip and run the next
```bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E88979FB9B30ACF2
sudo apt-get update
```

```bash
sudo apt-get install ros-foxy-control*
sudo apt-get install ros-foxy-ros-control*
sudo apt-get install ros-foxy-gazebo*
```

``` bash
apt install ros-foxy-gazebo-ros-pkgs
apt install ros-foxy-joint-state-publisher ros-foxy-joint-state-publisher-gui
apt install ros-foxy-xacro
```

# Installation 

Inside the ros 2 workspace clone this two package

```bash
git clone https://github.com/fabiogueunige/experimentalRob.git
```
before cloning, if is present remove the folder aruco because the github foledr contain it

Our launch is organized by the file launch.sh. So after cloning run this command for make the file executable
```bash
chmod +x launch.sh
```

# Running 

then build the ros2 folder, inside the ros worksapce run
```bash
colcon build
```
move in the src folder 
```bash
cd src
```
inside this folder there is the executable launch.sh, 
```bash
./launch.sh
```
and follow the code inside for choose wich node run, or move the chassis or move the camera for finde the aruco marker


after for launch it run on terminal 
``` bash
ros2 launch robot_urdf gazebo_circle.launch.py
```

# Algorithm
The goal of our algorithm is to make the robot turning, finding all the markers inside the arena, after reorder the finded marker and show a photo with all the finded marker reordered by their ids. And also put a circle inside a finded markers.

# Problems
This cose is developes using ros2 version humble, so there are sompe problem running the code with foxy, and there are some prblmen trying to executee the code inside docker.




