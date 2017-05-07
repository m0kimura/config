#!/bin/sh
##
##　キーファイルでログインするためのサーバー側への設定
##  scp .ssh/id_rsa.pub サーバー:~/ でキーファイルを送付しておく
cd ~/
mkdir .ssh
cat id_rsa.pub >> .ssh/authorized_keys
