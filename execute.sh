#!/usr/bin/bash
#

## Build Docker Image using dockerfile

sudo sh -c 'docker images'
sudo sh -c 'docker build --ulimit nofile=1024000:1024000 -t autojen:v1 .'
sudo sh -c 'docker images'

## Launch container

sudo sh -c 'docker run -dit --name myos1 autojen:v1'
