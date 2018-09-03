#!/usr/bin/env bash

sudo apt-get update
sudo apt-add-repository ppa:fish-shell/release-2 -y
sudo apt-get update
sudo apt-get install fish -y

# 設定成預設shell
sudo usermod -s /usr/bin/fish $USER

# 顯示完整的路徑
set -U fish_prompt_pwd_dir_length 0

# 安裝omf
# https://github.com/oh-my-fish/oh-my-fish
curl -L https://get.oh-my.fish > install
fish install --path=~/.local/share/omf --config=~/.config/omf
rm ./install

# 安裝主題
omf install gitstatus

touch ~/.config/fish/config.fish
echo 'alias la="php artisan"' >> ~/.config/fish/config.fish
echo 'alias sf="app/console"' >> ~/.config/fish/config.fish
echo 'alias clip="xclip -i -selection clipboard"' >> ~/.config/fish/config.fish
echo 'alias ..="cd ../"' >> ~/.config/fish/config.fish
echo 'alias ...="cd ../../"' >> ~/.config/fish/config.fish
echo 'alias ....="cd ../../../"' >> ~/.config/fish/config.fish
echo 'alias .....="cd ../../../../"' >> ~/.config/fish/config.fish
echo 'alias phpunit="./vendor/bin/phpunit"' >> ~/.config/fish/config.fish
echo "set -g theme_powerline_fonts no" >> ~/.config/fish/config.fish
echo "set -g theme_nerd_fonts no" >> ~/.config/fish/config.fish
echo "set -g fish_prompt_pwd_dir_length 0" >> ~/.config/fish/config.fish
echo "set -g theme_color_scheme base16-light" >> ~/.config/fish/config.fish
