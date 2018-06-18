#!/usr/bin/env bash

sudo apt-get update
sudo add-apt-repository ppa:ondrej/pkg-gearman
sudo apt-get update
sudo apt-get install php-gearman -y
sudo apt-get install gearman-job-server -y
sudo service gearman-job-server restart