#!/bin/sh
#
#
sudo apt-get update
sudo apt-get install docker.io
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
echo "##1"
sudo service start docker
echo "##2"
sudo docker run hello-world
echo "##3"
sudo gpasswd -a $USER docker
echo "##4"
sudo service docker restart
echo "##5"
sudo curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > temp
sudo cp temp /usr/local/bin/docker-compose
sudo rm temp
sudo chmod +x /usr/local/bin/docker-compose
sudo docker-compose version

