#!/bin/bash

ABSOLUTE_DOCKER=`pwd`
WS_PATH="${ABSOLUTE_DOCKER%%/src/*}"
CONTAINER_NAME=gpscon

mkdir ~/.ccache || echo ccache folder already exists

NAME=iron_gps # replace by the name of your image

echo Stopping previous $CONTAINER_NAME
docker stop $CONTAINER_NAME || echo Container was not running
docker rm $CONTAINER_NAME || echo Image was not created


docker build -f Dockerfile -t $NAME .

docker run --net=host \
    --ipc=host \
    -h "$CONTAINER_NAME" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $WS_PATH:/home/klein/ros_ws \
    -e DISPLAY=unix$DISPLAY \
    -e ROS_DOMAIN_ID=101 \
    --add-host "$CONTAINER_NAME:127.0.0.1" \
    --privileged \
    -it \
    --rm \
    --name $CONTAINER_NAME \
    $NAME

