# Ubuntu 20.04 Postinstall

# Snap installations
sudo snap install chromium
sudo snap install firefox
sudo snap install --classic code
sudo snap install intellij-idea-ultimate --classic
sudo snap install slack --classic
sudo snap install telegram-desktop --classic
sudo snap install krita --classic
sudo snap install spotify

# Apt installations
sudo apt install -y keepassx
sudo apt install -y zsh
sudo apt install -y clamtk
sudo apt install -y htop
sudo apt install -y vim
sudo apt install -y libavcodec-extra-53 libavutil-extra-51
sudo apt install -y curl
sudo apt install -y tree
sudo apt install -y git
sudo apt install -y maven

# Config
chsh -s $(which zsh)

echo  Manual installations
echo -- oh my zsh: https://github.com/ohmyzsh/ohmyzsh
echo -- MS Teams: https://www.microsoft.com/en-us/microsoft-365/microsoft-teams/download-app
echo -- Regolith: https://regolith-linux.org/
echo -- npm: https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions-enterprise-linux-fedora-and-snap-packages
echo -- sdkman https://sdkman.io/install