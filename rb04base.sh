#!/bin/bash
##
## setup basic for raspberry pi
read -p "$0 実行しますか? (y/n)" x
if [ "${x}" != "y" ] ; then
  exit
fi

sudo apt-get update

echo "###"
echo "### local time setting ###"
echo "###"
sudo rm -rf /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

echo "###"
echo "### japanese configration ###"
echo "###"
sudo dpkg-reconfigure locales
sudo apt-get install ttf-kochi-gothic xfonts-intl-japanese xfonts-intl-japanese-big xfonts-kaname

echo "###"
echo "### nodejs 8.9.4 LTS ###"
echo "###"
sudo  apt-get install -y nodejs npm
sudo  npm cache clean
sudo  npm install n -g
sudo  n 8.9.4
sudo  ln -sf /usr/local/bin/node /usr/bin/node

echo "###"
echo "###"
echo "### END ###"
