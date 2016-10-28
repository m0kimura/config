#!/bin/sh
##
## setup basic for raspberry pi
read -p "$0 実行しますか? (y/n)" x
if [ "${x}" != "y" ] ; then
  exit
fi

echo ### aptitude ###
sudo apt-get update
sudo apt-get install aptitude

echo ### local time setting ###
sudo rm -rf /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

echo ### japanese configration ###
sudo dpkg-reconfigure locales
apt-get install ttf-kochi-gothic xfonts-intl-japanese xfonts-intl-japanese-big xfonts-kaname

# pause
echo ### nodejs ###
read -p "中間確認" y

sudo apt-get install nodejs npm
sudo update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

# pause
read -p "中間確認" y

echo ### awscli ###
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install awscli

# pause
echo ### nodejs basic ###
read -p "中間確認" y

sudo npm install -g forever
sudo npm install -g express
sudo npm install -g fibers
sudo npm install -g stratifiedjs

# pause
echo ### mongo db ###
read -p "中間確認" y
sudo apt-get install mongodb-server
sudo service mongodb start

echo ### end ###
