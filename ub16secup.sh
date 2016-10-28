#!/bin/sh
##
##
read -p "アップデートマネジャーインストール? (y/n)" x
if [ "${x}" = "y" ] ; then
    sudo apt-get install update-manager-core
fi


read -p "セキュリティアップデート? (y/n)" x
if [ "${x}" = "y" ] ; then
    sudo apt-get update
    sudo apt-get install unattended-upgrades
    sudo dpkg-reconfigure -plow unattended-upgrades
fi


read -p "設定の確認? (y/n)" x
if [ "${x}" = "y" ] ; then
  sudo nano /etc/apt/apt.conf.d/50unattended-upgrades
fi
