#!/bin/sh
##
##
echo /##
echo /## Desktop Environment for Ubuntu 16.04LTS
echo /##
read -p "開始確認" y

export LANG=ja_JP.UTF-8
export LC_MESSAGES=ja_JP.UTF-8

# pause
echo /##
echo /## git ###
echo /##

sudo apt-get install nodejs npm
sudo update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

# pause
echo /##
echo /## git ###
echo /##
read -p "中間確認" y

sudo apt-get install git

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
mkdir $HOME/nodejs

echo /##
echo /##
read -p "cairo-dock 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /## Cairo-Dock ###
    sudo apt-get update
    sudo apt-get install cairo-dock
fi


echo /##
echo /##
read -p "Mac Style 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then

    echo /##
    echo /## MacUbuntu ###
    echo /##
    wget http://drive.noobslab.com/data/Mac-13.10/MBuntu-Wallpapers.zip

    echo /##
    echo /##
    read -p "中間確認" y
    sudo add-apt-repository ppa:noobslab/macbuntu
    sudo apt-get update
    sudo apt-get install mac-ithemes-v3
    sudo apt-get install macbuntu-os-icons-lts-v7
    sudo apt-get install macbuntu-os-ithemes-lts-v7
    wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac/launcher-logo/apple/launcher_bfb.png
    sudo mv launcher_bfb.png /usr/share/unity/icons/

    read -p "中間確認" y
    echo /##
    echo /## Tweak Tools ###
    echo /##
    sudo apt-get install unity-tweak-tool
    sudo apt-get install gnome-tweak-tool
    sudo apt-get install synapse
fi


echo /##
echo /##
read -p "JDK7 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## JDK7 ###
    echo /##
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update
    sudo apt-get install oracle-jdk7-installer
    java -version
fi


echo /##
echo /##
read -p "Geany 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## Geany ###
    echo /##
    sudo apt-get install geany
fi


echo /##
echo /##
read -p "Chromium 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## Chromium ###
    echo /##
    sudo apt-get install chromium-browser
fi


echo /##
echo /##
read -p "atom 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## Atom ###
    echo /##
    sudo add-apt-repository ppa:webupd8team/atom
    sudo apt-get update
    sudo apt-get install atom
fi


echo /##
echo /##
read -p "Chrome 設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo /##
    echo /## Chrome ###
    echo /##
    sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    sudo apt-get update
    sudo apt-get install google-chrome-stable
fi


# pause
echo /##
echo /## mongo db ###
echo /##
read -p "中間確認" y

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo cp ~/config/mongod.service /etc/systemd/system/mongod.service
sudo systemctl enable mongod
sudo service mongod start
sudo service mongod status


echo /##
echo /## END ###
echo /##

