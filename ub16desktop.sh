#!/bin/sh
##
##
read -p "cairo-dock 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### Cairo-Dock ###
    sudo apt-get update
    sudo apt-get install cairo-dock
fi


read -p "Mac Style 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then

    echo ### MacUbuntu ###
    wget http://drive.noobslab.com/data/Mac-13.10/MBuntu-Wallpapers.zip

  read -p "中間確認" y
    sudo add-apt-repository ppa:noobslab/macbuntu
    sudo apt-get update
    sudo apt-get install mac-ithemes-v3
    sudo apt-get install macbuntu-os-icons-lts-v7
    sudo apt-get install macbuntu-os-ithemes-lts-v7
    wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac/launcher-logo/apple/launcher_bfb.png
    sudo mv launcher_bfb.png /usr/share/unity/icons/
  read -p "中間確認" y
    echo ### Tweak Tools ###
    sudo apt-get install unity-tweak-tool
    sudo apt-get install gnome-tweak-tool
    sudo apt-get install synapse
fi


read -p "JDK7 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### JDK7 ###
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update
    sudo apt-get install oracle-jdk7-installer
    java -version
fi


read -p "Geany 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### Geany ###
    sudo apt-get install geany
fi


read -p "Chromium 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### Chromium ###
    sudo apt-get install chromium-browser
fi


read -p "atom 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### Atom ###
    sudo add-apt-repository ppa:webupd8team/atom
    sudo apt-get update
    sudo apt-get install atom
fi


read -p "Chrome 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### Chrome ###
    sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    sudo apt-get update
    sudo apt-get install google-chrome-stable
fi


echo ### END ###
