#!/bin/bash
##
##
sudo apt update
sudo apt upgrade
read -p "cairo-dock INSTALL (y/n)" x
if [ "${x}" = "y" ] ; then
    sudo apt-get cairo-dock
    sudo apt-get cairo-dock-plug-ins
fi

read -p "MACX OS IMAGE (y/n)" x
if [ "${x}" = "y" ] ; then
  sudo apt install gnome-tweak-tool chrome-gnome-shell
  git clone https://github.com/zayronxio/Os-Catalina-icons
  git clone https://github.com/paullinuxthemer/Mc-OS-themes
  sudo mv ./Mc-OS-themes/Mc-OS-CTLina-Gnome-Dark-1.1 /usr/share/themes/
  sudo mv ./Os-Catalina-icons /usr/share/icons/
  rm -rf ./Mc-OS-themes
  rm -rf ./Os-Catalina-icons
fi

read -p "VSCODE INSTALL (y/n)" x
if [ "${x}" = "y" ] ; then
  curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o vscode.deb
  sudo apt install ./vscode.deb
  rm ./vscode.deb
fi
