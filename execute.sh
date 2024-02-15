#!/usr/bin/bash
#
sudo sh -c 'docker images'
sudo sh -c 'docker build -t autoJen:v1 .'
sudo sh -c 'docker images'

