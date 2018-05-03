#!/bin/sh
##
##
echo '##'
echo '## aptitude'
echo '##'
apt-get install aptitude

echo '##'
echo '## local time setting'
echo '##'
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

echo '##'
echo '## japanese configration'
echo '##'
aptitude install locales
aptitude install language-pack-ja
dpkg-reconfigure locales
aptitude install ttf-mscorefonts-installer

export LANG=ja_JP.UTF-8
export LC_MESSAGES=ja_JP.UTF-8

echo '##'
echo '## nodejs'
echo '##'
apt-get install nodejs npm
npm cache clean
npm install n -g
n latest
ln -sf /usr/local/bin/node /usr/bin/node

echo '##'
echo '## pip'
echo '##'
wget https://bootstrap.pypa.io/get-pip.py
chmod +x get-pip.py
./get-pip.py
rm get-pip.py

echo '##'
echo '## docker'
echo '##'
apt-get install docker.io
pip install -U docker-compose
docker-compose --version

echo '##'
echo '## aws-cli'
echo '##'
pip install awscli

echo '##'
echo '##'
echo '## end'

