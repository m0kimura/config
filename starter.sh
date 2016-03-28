#!/bin/sh
##
##
read -p "$0 実行しますか? (y/n)" x
if [ "${x}" != "y" ] ; then
  exit
fi

echo ### update ###
sudo apt-get update

echo ### git ###
sudo apt-get install git

git clone https://m0kimura@git.codebreak.com/m0kimura/config-UBnode1.git config

echo ### end ###
