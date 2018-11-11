#!/usr/bin/env bash

ln -s ~/桌面 ~/Desktop

sudo apt-get update
sudo apt-get install gnome-disk-utility -y
sudo apt-get install vim -y
sudo apt-get install curl -y
sudo apt-get install xclip -y
sudo apt-get install openvpn -y

# common
bash ./common/git.sh
bash ./common/nodejs.sh
bash ./common/php.sh
bash ./common/mysql.sh
bash ./common/phpmyadmin.sh

# workspace
bash ./workspace/imagick.sh
bash ./workspace/media.sh
bash ./workspace/php-greaman.sh
bash ./workspace/phpstorm.sh

# git
git config --global user.name "fall1600"
git config --global user.email fall1600@gmail.com
git config --global core.editor vim
git config --global push.default simple
git config --global core.filemode false
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch

# yarn dependency
sudo yarn global add apidoc -y
sudo yarn global add markdown-styles -y

# ngrok
wget "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip"
unzip ./ngrok-stable-linux-amd64.zip
sudo mv ./ngrok /usr/bin
rm ngrok-stable-linux-amd64.zip

# unetbootin
sudo add-apt-repository ppa:gezakovacs/ppa -y
sudo apt-get update
sudo apt-get install unetbootin -y