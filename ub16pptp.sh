#!/bin/sh
##
##
sudo modprobe ppp-compress-18

sudo apt-get update
sudo apt-get install pptpd

read -p " アドレス設定 pptpd.conf(y/n/q)" x
if [ "${x}" = "q" ] ; then
  exit
fi
if [ "${x}" = "y" ] ; then
  sudo nano /etc/pptpd.conf
fi

read -p " DNS設定 pptpd-options(y/n/q)" x
if [ "${x}" = "q" ] ; then
  exit
fi
if [ "${x}" = "y" ] ; then
  sudo nano /etc/ppp/pptpd-options
fi

read -p " ユーザー、認証設定 chap-secrets(y/n/q)" x
if [ "${x}" = "q" ] ; then
  exit
fi
if [ "${x}" = "y" ] ; then
  sudo nano /etc/ppp/chap-secrets
fi

sudo /etc/init.d/pptpd restart

sudo nano /etc/sysctl.conf
sudo sysctl -p

exit
