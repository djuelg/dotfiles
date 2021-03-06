#!/bin/bash
# ubuntu gnome post installation script for djuelg

# general update
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

# system specific stuff
sudo apt-get install -y ubuntu-restricted-extras
sudo apt-get install -y gnome-tweak-tool
sudo apt-get install -y nautilus-open-terminal

# add trusted public keys
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

# add repsitories
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:webupd8team/terminix
sudo add-apt-repository -y ppa:mutate/ppa
sudo apt-get update

# needed standard applications
sudo apt-get install sublime-text
sudo apt-get install -y tilix
sudo apt-get install -y vim
sudo apt-get install -y google-chrome-stable
sudo apt-get install -y libavcodec-extra-53 libavutil-extra-51
sudo apt-get install -y unrar
sudo apt-get install -y curl
sudo apt-get install -y tree
sudo apt-get install -y virtualbox
sudo apt-get install -y gimp

# needed development applications
sudo apt-get install -y git
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y oracle-java8-set-default
sudo apt-get install -y maven
sudo apt-get install -y nodejs
sudo apt-get install -y npm

# create node symbolic link for convenience
 sudo ln -s /usr/bin/nodejs /usr/bin/node

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

# change default applications
sudo update-alternatives --config gnome-text-editor
sudo update-alternatives --config editor
sudo update-alternatives --config x-www-browser
sudo update-alternatives --config x-terminal-emulator
sudo update-alternatives --config gnome-www-browser

# now open all important gnome shell extensions
xdg-open https://extensions.gnome.org/extension/118/no-topleft-hot-corner/
xdg-open https://extensions.gnome.org/extension/750/openweather/
xdg-open https://extensions.gnome.org/extension/7/removable-drive-menu/
xdg-open https://extensions.gnome.org/extension/19/user-themes/
xdg-open https://extensions.gnome.org/extension/6/applications-menu/
xdg-open https://extensions.gnome.org/extension/15/alternatetab/
xdg-open https://extensions.gnome.org/extension/16/auto-move-windows/