FROM iron_gps_2:latest
#RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y terminator
#RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y nano iputils-ping 

# Build the Simulation application
#RUN cd /home/fry/ros_ws
#RUN /bin/bash -c " colcon build --symlink-install"
#RUN apt-get clean
#RUN apt-get update && apt-get install -y \
#    ros-iron-rviz2 \
#    ros-iron-rqt \
#    ros-iron-rqt-common-plugins \
#    ros-iron-ros-core \
#    ros-iron-geometry2 \
#    ros-iron-joint-state-publisher-gui \
#    ros-iron-navigation2 \
#    ros-iron-nav2-bringup \
#    ros-iron-turtlebot3* \
#    ros-iron-marti* \
#    ros-iron-gps-msgs \
#    ros-iron-image-geometry \
#    libglew-dev \
#    ros-iron-xacro
    
  

# Set environment variables
#ENV DISPLAY=host.docker.internal:0  

# Create user
#RUN useradd klein -m -p klein -s /bin/bash
#RUN echo "klein:klein" | chpasswd
#RUN adduser klein sudo
#RUN /bin/bash -c "adduser klein dialout"
#USER klein
#RUN mkdir /home/klein/xdg
#RUN /bin/bash -c "echo source /opt/ros/iron/setup.bash >> /home/klein/.bashrc"
#RUN /bin/bash -c "echo source /home/klein/ros_ws/install/setup.bash >> /home/klein/.bashrc"

#WORKDIR /home/klein/ros_ws

# USER root

ENTRYPOINT ["/bin/bash"]
