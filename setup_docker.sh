#!/bin/sh
#
#
echo "##"
echo "## nodejs 8.9.4 LTS ###"
echo "##"
  sudo  apt-get install -y nodejs npm
  sudo  npm cache clean
  sudo  npm install n -g
  sudo  n 8.9.4
  sudo  ln -sf /usr/local/bin/node /usr/bin/node
  sudo  npm install forever -g

echo "##"
echo "## docker"
echo "##"
  sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  sudo apt-get update
  sudo apt-get -y install docker-ce
  sudo adduser ubuntu docker
  sudo usermod -g docker ubuntu
  sudo /bin/systemctl restart docker.service
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

