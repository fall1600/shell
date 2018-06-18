#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install vim -y
sudo apt-get install curl -y
sudo apt-get install xclip -y

# common
bash ./common/git.sh
bash ./common/nodejs.sh
bash ./common/php.sh
bash ./common/mysql.sh
bash ./common/phpmyadmin.sh

# stage
bash ./stage/certbot.sh

# git
git config --global user.name "Ciao Chung"
git config --global user.email ciao0958@gmail.com
git config --global core.editor vim
git config --global push.default simple
git config --global core.filemode false