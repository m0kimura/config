#!/bin/sh
##
##

# pause
read -p "Apatch2 ? (y/n)" x
if [ "${x}" = "y" ] ; then
  echo ### Apache2 ###
  sudo aptitude -y install apache2
fi


# pause
read -p "MySql ? (y/n)" x
if [ "${x}" = "y" ] ; then
  echo ### Mysql ###
  sudo aptitude -y install mysql-server-5.6
fi

# pause
read -p "PHP ? (y/n)" x
if [ "${x}" = "y" ] ; then
  echo ### PHP ###
  sudo apt-get install php
  sudo apt-get install libapache2-mod-php
fi

# pause
read -p "Postgres ? (y/n)" x
if [ "${x}" = "y" ] ; then
  echo ### Postgres ###
  sudo apt-get -y install postgresql-9.3 libpq-dev
  sudo apt-get -y install pgadmin3
fi
