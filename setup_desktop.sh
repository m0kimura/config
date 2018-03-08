#!/bin/bash
##
##
read -p "JDK8 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo "### JDK8 ###"
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update
    sudo apt-get install oracle-java8-installer
    java -version
fi


read -p "Mac Style 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then

    echo "### MacUbuntu ###"
    wget http://drive.noobslab.com/data/Mac-13.10/MBuntu-Wallpapers.zip

  read -p "中間確認" x
    sudo add-apt-repository ppa:noobslab/themes
    sudo apt-get update
    sudo apt-get install mac-ithemes-v3
    sudo apt-get install mac-icons-v3
    sudo apt-get install mbuntu-bscreen-v3

  read -p "中間確認" x
    echo ### Tweak Tools ###
    sudo apt-get install unity-tweak-tool
    sudo apt-get install gnome-tweak-tool

fi


read -p "cairo-dock 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo "### Cairo-Dock ###"
    sudo apt-add-repository ppa:cairo-dock-team/ppa
    sudo apt-get update
    sudo apt-get install cairo-dock cairo-dock-plug-ins
fi


read -p "Chromium 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo "### Chromium ###"
    sudo apt-get install chromium-browser
fi


read -p "Docker 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo "### Docker ###"
    sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get update
    sudo apt-get -y install docker-ce
    sudo adduser kimura docker
fi


read -p "x2go(リモート接続クライアント) 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo "### x2go ###"
    sudo apt-add-repository ppa:x2go/stable
    sudo apt update
    sudo apt install -y x2goclientfi
fi

echo "### END ###"
