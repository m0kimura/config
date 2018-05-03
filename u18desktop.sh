#!/bin/sh
#
#
sudo apt-get update
echo "##"
echo "## nodejs latest + forever ###"
echo "##"
  sudo  apt-get install -y nodejs npm
  sudo  npm cache clean
  sudo  npm install n -g
  sudo  latest
  sudo  ln -sf /usr/local/bin/node /usr/bin/node
  sudo  npm install forever -g

echo "##"
echo "## docker"
echo "##"
  sudo apt-get -y install docker.io
  sudo adduser ubuntu docker
  sudo usermod -g docker ubuntu
  sudo service start docker
  sudo docker run hello-world
  sudo gpasswd -a $USER docker
  sudo service docker restart

echo "##"
echo "## cairo-dock"
echo "##"
  sudo apt-get -y install cairo-dock

echo "##"
echo "## atom"
echo "##"
  wget -O atom-amd64.deb https://atom.io/download/deb
  sudo apt install gdebi-core
  sudo gdebi atom-amd64.deb
  rm atom-amd64.deb
