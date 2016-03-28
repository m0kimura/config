#!/bin/sh
##
##　システム全体をisoでバックアップします。
read -p "$0 実行しますか? (y/n)" x
if [ "${x}" != "y" ] ; then
  exit
fi

sudo echo "## RemasterSys" >> /etc/apt/sources.list
sudo echo "deb http://www.remastersys.com/ubuntu precise main" >> /etc/apt/sources.list
wget -O- http://www.remastersys.com/ubuntu/remastersys.gpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install remastersys

read -p "バックアップしますか? (y/n)" x
if [ "${x}" = "y" ] ; then
  sudo remastersys backup
fi
