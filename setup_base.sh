#!/bin/sh
##
##
read -p "$0 実行しますか? (y/n)" x
if [ "${x}" != "y" ] ; then
  exit
fi

echo /##
echo /## aptitude ###
echo /##
sudo apt-get install aptitude

echo /##
echo /## local time setting ###
echo /##
sudo rm -rf /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

echo /##
echo /## japanese configration ###
echo /##
sudo aptitude install locales
sudo aptitude install language-pack-ja
sudo dpkg-reconfigure locales
sudo aptitude install ttf-mscorefonts-installer

export LANG=ja_JP.UTF-8
export LC_MESSAGES=ja_JP.UTF-8

# pause
echo /##
echo /## nodejs ###
echo /##
read -p "中間確認" y

sudo apt-get install nodejs npm
sudo update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

# pause
read -p "中間確認" y

echo /##
echo /## awscli ###
echo /##
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install awscli

# pause
echo /##
echo /## nodejs basic ###
echo /##
read -p "中間確認" y

sudo npm install -g forever
sudo npm install -g express
sudo npm install -g fibers
sudo npm install -g stratifiedjs
sudo chown ubuntu:ubuntu ~/tmp
mkdir $HOME/nodejs


# pause
echo /##
echo /## mongo db ###
echo /##
read -p "中間確認" y

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
sudo service mongod status

echo /##
echo /##
echo /## end ###
