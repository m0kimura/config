#!/bin/bash
##
##
read -p "$0 実行しますか? (y/n)" x
if [ "${x}" != "y" ] ; then
  exit
fi
sudo apt-get install curl
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
echo 'deb [arch=amd64] https://repo.skype.com/deb stable main' | sudo tee --append /etc/apt/sources.list.d/skype-stable.list
sudo apt-get update
sudo apt-get install -y skypeforlinux
echo "###"
echo "###"
echo "### END"
