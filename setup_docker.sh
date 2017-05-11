#!/bin/sh
#
#
sudo apt-get update
sudo apt-get install docker.io
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
sudo gpasswd -a $USER docker
sudo service start docker
sudo docker run hello-world

sudo curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > temp
sudo cp temp /usr/local/bin/docker-compose
sudo rm temp
sudo chmod +x /usr/local/bin/docker-compose
sudo docker-compose version

