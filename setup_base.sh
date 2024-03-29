#!/bin/sh
##
##
read -p "JAPANESE SETTING 実行しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
  echo "##"
  echo "## aptitude ##"
  echo "##"
  sudo apt install aptitude

  echo "##"
  echo "## local time setting ##"
  echo "##"
  sudo rm -rf /etc/localtime
  sudo ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

  echo "##"
  echo "## japanese configration ##"
  echo "##"
  sudo aptitude install locales
  sudo aptitude install language-pack-ja
  sudo dpkg-reconfigure locales
  sudo aptitude install ttf-mscorefonts-installer

  export LANG=ja_JP.UTF-8
  export LC_MESSAGES=ja_JP.UTF-8
fi


read -p "NODEJS INSTALL 実行しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
  echo "##"
  echo "## nodejs ##"
  echo "##"

  sudo apt install nodejs npm
  sudo npm install -g n
  n list
  node -v
  sudo npm install -g forever
  sudo npm install -g express
fi


read -p "AWSCLI INSTALL 実行しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
  echo "##"
  echo "## awscli ##"
  echo "##"
  wget https://bootstrap.pypa.io/get-pip.py
  sudo python get-pip.py
  sudo pip install awscli
fi

read -p "Docker 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
  echo "### Docker ###"
  sudo apt update
  sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  sudo apt update
  sudo apt -y install docker-ce
  sudo adduser $USER docker
  sudo systemctl status docker
  sudo apt -y install docker-compose
fi

echo "##"
echo "##"
echo "## end ##"
