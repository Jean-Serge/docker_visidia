#! /bin/bash

# TODO 
mkdir ./workspace 2>/dev/null

docker build -t docker_visidia .
docker run -ti --rm --name visidia -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/visidia/workspace/.Xauthority -v `pwd`/workspace:/home/visidia/workspace --net=host docker_visidia
