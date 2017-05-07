#!/bin/sh
##
##
read -p "不要サービスストップ? (y/n)" x
if [ "${x}" = "y" ] ; then
    sudo apt-get install sysv-rc-conf
    sudo sysv-rc-conf --list
fi

echo "停止は sudo sysv-rc-conf ????? off"
