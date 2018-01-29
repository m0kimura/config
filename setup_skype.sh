#!/bin/bash
#
echo "###"
echo "### skype"
echo "###"
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
sudo echo 'deb [arch=amd64] https://repo.skype.com/deb stable main' | sudo tee --append /etc/apt/sources.list.d/skype-stable.list
sudo apt-get update
sudo apt-get install -y skypeforlinux
