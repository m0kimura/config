#!/bin/bash
##
##
read -p "$0 実行しますか? (y/n)" x
if [ "${x}" != "y" ] ; then
  exit
fi
sudo apt update
sudo apt upgrade -y
echo "###"
echo "### nodejs npm"
echo "###"
sudo apt install -y nodejs npm
sudo npm cache clean
sudo npm install n -g
sudo n 8.9.4
sudo ln -sf /usr/local/bin/node /usr/bin/node

echo "###"
echo "### local time setting"
echo "###"
sudo rm -rf /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

echo "###"
echo "### japanse configration"
echo "###"
export LANG=ja_JP.UTF-8
export LC_MESSAGES=ja_JP.UTF-8

echo "###"
echo "### end"
echo "###"
