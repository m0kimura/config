#!/bin/sh
##
## setup android sdk

read -p "$0 実行しますか? (y/n)" x
if [ "${x}" != "y" ] ; then
  exit
fi

echo /##
echo /## download
echo /##
wget http://dl.google.com/android/android-sdk_r24.2-linux.tgz
tar -xvf android-sdk_r24.2-linux.tgz
cd android-sdk-linux/tools

echo /##
echo /## install all sdk packages
echo /##
./android update sdk --no-ui

echo /##
echo /## set path
echo /##
vi ~/.zshrc << EOT

export PATH=${PATH}:$HOME/sdk/android-sdk-linux/platform-tools:$HOME/sdk/android-sdk-linux/tools:$HOME/sdk/android-sdk-linux/build-tools/22.0.1/

EOT

source ~/.zshrc

echo /##
echo /## adb
echo /##
sudo apt-get install libc6:i386 libstdc++6:i386

echo /##
echo /## aapt
echo /##
sudo apt-get install zlib1g:i386

echo /##
echo /##
echo /## END
