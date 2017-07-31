#!/bin/bash

sudo apt-get install nodejs npm
sudo npm install n -g
sudo n 7.4.0
sudo ln -sf /usr/local/bin/node /usr/bin/node
sudo apt-get purge -y nodejs npm
sudo npm install -g forever

read -p "cairo-dock 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /## Cairo-Dock ###
    sudo apt-get update
    sudo apt-get install cairo-dock
    wget http://drive.noobslab.com/data/Mac-13.10/MBuntu-Wallpapers.zip
    sudo add-apt-repository ppa:noobslab/macbuntu
    sudo apt-get update
    sudo apt-get install mac-ithemes-v3
    sudo apt-get install macbuntu-os-icons-lts-v7
    sudo apt-get install macbuntu-os-ithemes-lts-v7
    wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac/launcher-logo/apple/launcher_bfb.png
    sudo mv launcher_bfb.png /usr/share/unity/icons/
fi

read -p "Chromium 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## Chromium ###
    echo /##
    sudo apt-get install chromium-browser
fi

read -p "atom 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## Atom ###
    echo /##
    sudo add-apt-repository ppa:webupd8team/atom
    sudo apt-get update
    sudo apt-get install -y atom schellcheck python3-pip
    git clone https://github.com/m0kimura/atom-packages.git packages
    sudo npm install eslint -g
    pip3 install pep8
    pip3 install autopep8
fi

read -p "Chrome 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## Chrome ###
    echo /##
    sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    sudo apt-get update
    sudo apt-get install google-chrome-stable
fi
