#!/bin/sh
##
##
sudo apt-get update

read -p "c, c++環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### gcc ###
    sudo apt-get install gcc
fi



read -p "android sdk環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### android sdk ###
    sudo apt-get install android-sdk
fi



read -p "Cordova CLI 環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### Cordova CLI ###
    sudo npm -g install cordova
    sudo npm -g install minimatch
    cordova -v
    adb version
fi


read -p "Arduino IDE 環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### Arduino IDE ###
    tar -xf ~/config/arduino-1.6.12-linux64.tar.xz
fi


read -p "AVR IDE 環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### AVRDUDE ###
    sudo apt-get install avrdude
fi


echo ### END ###
