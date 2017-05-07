#!/bin/sh
##
##
sudo apt-get update

read -p "c, c++環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## gcc ###
    echo /##
    sudo apt-get install gcc
fi



read -p "android sdk環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## android sdk ###
    echo /##
    sudo apt-get install android-sdk
fi



read -p "Cordova CLI 環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## Cordova CLI ###
    echo /##
    sudo npm -g install cordova
    sudo npm -g install minimatch
    cordova -v
    adb version
fi


read -p "Arduino IDE 環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## Arduino IDE ###
    echo /##
    sudo apt-get install arduino
fi


read -p "AVR IDE 環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## AVRDUDE ###
    echo /##
    sudo apt-get install avrdude
fi


read -p "メールアドレスを入力してください" x
git config --global user.email $x

read -p "名前を入力してください" x
git config --global user.name $x

git config --global push.default matching

echo /##
echo /##
echo /## END ###
