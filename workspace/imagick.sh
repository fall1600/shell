#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install imagemagick -y
sudo apt-get install php-imagick -y

# 確認是否有安裝
php -m | grep imagick
