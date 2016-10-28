#!/bin/sh
#
#
sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.820_all.deb
sudo dpkg --install webmin_1.820_all.deb
rm webmin_1.820_all.deb
