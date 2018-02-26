#!/usr/bash
#> ホスト名を変更する old new
#> @parameter {String} $1 旧名
#> @parameter {String} $2 新名
  sudo sed -e "s/$1/$2/g" /etc/hostname
  sudo sed -e "s/$1/$2/g" /etc/hosts
##