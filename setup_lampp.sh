#!/bin/sh
##
##

# pause
read -p "中間確認 Next Apache2" y
echo ### Apache2 ###
sudo aptitude -y install apache2

# pause
read -p "中間確認 Next Mysql" y
echo ### Mysql ###
sudo aptitude -y install mysql-server-5.6

# pause
read -p "中間確認 Next PHP" y
echo ### PHP ###
sudo aptitude -y install php5
sudo aptitude -y install libapache2-mod-php5
sudo aptitude -y install php5-cgi
sudo aptitude -y install php5-common
sudo aptitude -y install php-pear

# pause
read -p "中間確認 Next Postgres" y
echo ### Postgres ###
sudo apt-get -y install postgresql-9.3 libpq-dev
sudo apt-get -y install pgadmin3
