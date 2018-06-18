#!/usr/bin/env bash

sudo apt-get update
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.1 -y
sudo apt-get install php7.1-mysql -y
sudo apt-get install php7.1-mbstring -y
sudo apt-get install php7.1-mcrypt -y
sudo apt-get install php7.1-gd -y
sudo apt-get install php7.1-zip -y
sudo apt-get install php7.1-dom -y
sudo apt-get install libapache2-mod-php7.1 -y
sudo service apache2 restart