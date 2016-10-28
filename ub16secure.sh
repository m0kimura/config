#!/bin/sh
##
##
sudo apt-get update

read -p "Tripwire(改竄検出)? (y/n)" x
if [ "${x}" = "y" ] ; then
    sudo apt-get install tripwire
fi


read -p "Snort(侵入検知)? (y/n)" x
if [ "${x}" = "y" ] ; then
    sudo apt-get install snort
fi


read -p "Nmap(ポートスキャン)? (y/n)" x
if [ "${x}" = "y" ] ; then
    sudo apt-add-repository ppa:pi-rho/security
    sudo apt-get update
    sudo apt-get install nmap
fi


read -p "Swatch(ログ監視)? (y/n)" x
if [ "${x}" = "y" ] ; then
    sudo apt-get install swatch
fi
