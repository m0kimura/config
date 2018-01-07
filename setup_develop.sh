#!/bin/bash
##
##
sudo apt-get update


read -p "atom 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### atom editor ###
    sudo add-apt-repository ppa:webupd8team/atom
    sudo apt-get update
    sudo apt-get install atom
fi


read -p "nodejs 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### nodejs ###
    sudo apt-get install -y nodejs npm
    sudo npm cache clean
    sudo npm install n -g
    sudo n stable
    sudo ln -sf /usr/local/bin/node /usr/bin/node
    node -v
    read -p 確認 x
fi


read -p "python 導入しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### atom editor ###
    sudo apt-get install build-essential libncursesw5-dev &&
    libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev &&
    libssl-dev openssl libbz2-dev libreadline-dev
    git clone https://github.com/yyuu/pyenv.git ~/.pyenv
    {
      echo "export PYENV_ROOT=\"$HOME/.pyenv\""
      echo "export PATH=\"$PYENV_ROOT/bin:$PATH\""
      echo "eval \"$(pyenv init -)\""
    } >> ~/.profile
    source ~/.profile
    pyenv install 3.6.0
    pyenv global 3.6.0
fi


read -p "c, c++環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### build-essentials ###
    sudo apt-get install build-essentials
fi


read -p "Monaca CLI 環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### Monaca CLI ###
    sudo npm -g install monaca
fi


read -p "Cordova CLI 環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### Cordova CLI ###
    sudo npm -g install cordova
    cordova -v
    echo "export PATH=$PATH:~/android/sdk/tools/" >> ~/.bash_profile
    echo "export PATH=$PATH:~/android/sdk/platform-tools/" >> ~/.bash_profile
    source ~/.bash_profile
    android -h
    adb version
fi


read -p "Eclipse 環境を設定しますか? (y/n)" x
if [ "${x}" = "y" ] ; then
    echo ### Eclipse ###
    cd ~/Downloads
    wget http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/SR2/eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz
    wget http://osdn.jp/projects/mergedoc/downloads/61474/pleiades_1.5.0.zip
    cd ~/
    tar xavf ~/Downloads/eclipse-*
    cd ~/eclipse/
    unzip ~/Downloads/pleiades*
    echo '-javaagent:/opt/eclipse/plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar' | tee -a ~/eclipse/eclipse.ini
fi


echo ### END ###
