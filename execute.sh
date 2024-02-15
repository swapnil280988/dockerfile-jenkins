#!/usr/bin/bash
#
sudo sh -c 'docker images'
sudo sh -c 'docker build -t autojen:v1 .'
sudo sh -c 'docker images'

