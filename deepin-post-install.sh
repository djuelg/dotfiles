#!/bin/bash
# deepin post installation script for djuelg

# general update
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

# add trusted public keys
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

# add repsitories
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/terminix
sudo add-apt-repository -y ppa:mutate/ppa
sudo apt-get update

# needed standard applications
sudo apt-get install sublime-text
sudo apt-get install -y tilix
sudo apt-get install -y vim
sudo apt-get install -y libavcodec-extra-53 libavutil-extra-51
sudo apt-get install -y unrar
sudo apt-get install -y curl
sudo apt-get install -y tree
sudo apt-get install -y gimp

# needed development applications
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y oracle-java8-set-default
sudo apt-get install -y maven

# install and switch to zsh with oh-my-zsh
sudo apt-get install -y zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# replace texteditor gedit with sublime
if [ -f /usr/share/applications/sublime-text.desktop ]; then
    sudo sed -i -- 's/gedit/sublime-text/g' /usr/share/applications/defaults.list
fi
if [ -f /usr/share/applications/sublime_text.desktop ]; then
    sudo sed -i -- 's/gedit/sublime_text/g' /usr/share/applications/defaults.list
fi
