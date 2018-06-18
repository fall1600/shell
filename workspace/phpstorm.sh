#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install default-jre -y

wget https://download-cf.jetbrains.com/webide/PhpStorm-2017.3.4.tar.gz
tar xfz PhpStorm-*.tar.gz
sudo mv PhpStorm-17*/ /opt/phpstorm/
rm ./PhpStorm-2017.3.4.tar.gz
sudo ln -s /opt/phpstorm/bin/phpstorm.sh /usr/local/bin/phpstorm
sudo ln -s /opt/phpstorm/bin/phpstorm.sh /usr/bin/phpstorm

echo "[Desktop Entry]" >> /usr/share/applications/phpstorm.desktop
echo "Version=5.0.4" >> /usr/share/applications/phpstorm.desktop
echo "Name=PhpStorm" >> /usr/share/applications/phpstorm.desktop
echo "GenericName=Text Editor" >> /usr/share/applications/phpstorm.desktop
echo "Exec=phpstorm" >> /usr/share/applications/phpstorm.desktop
echo "Terminal=false" >> /usr/share/applications/phpstorm.desktop
echo "Icon=/opt/phpstorm/bin/phpstorm.png" >> /usr/share/applications/phpstorm.desktop
echo "Type=Application" >> /usr/share/applications/phpstorm.desktop
echo "Categories=TextEditor;IDE;Development" >> /usr/share/applications/phpstorm.desktop
echo "X-Ayatana-Desktop-Shortcuts=NewWindow" >> /usr/share/applications/phpstorm.desktop
echo "[NewWindow Shortcut Group]" >> /usr/share/applications/phpstorm.desktop
echo "Name=New Window" >> /usr/share/applications/phpstorm.desktop
echo "Exec=phpstorm" >> /usr/share/applications/phpstorm.desktop
echo "TargetEnvironment=Unity" >> /usr/share/applications/phpstorm.desktop

