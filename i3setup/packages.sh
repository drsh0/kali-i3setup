#!/bin/bash
echo -e "update packages"
sudo apt update && sudo apt upgrade -y

echo -e "installing required packages"
sudo apt install i3 nitrogen compton feh -y

#libi3ipc-glib
sudo apt install gobject-introspection -y
## TODO add the plugin and the library install here via deb

#others
sudo apt install xclip -y

echo -e "installing visual packages"
sudo apt install adapta-gtk-theme papirus-icon-theme -y
sudo apt install xfce4-genmon-plugin xfce4-xkb-plugin xfce4-fsguard-plugin xfce4-goodies -y
sudo apt install j4-dmenu-desktop
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

#security
sudo apt install seclists gobuster -y
