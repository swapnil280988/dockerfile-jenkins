#!/usr/bin/bash
#
sudo sh -c 'docker images'
sudo sh -c 'docker build --ulimit nofile=1024000:1024000 -t autojen:v1 .'
sudo sh -c 'docker images'

