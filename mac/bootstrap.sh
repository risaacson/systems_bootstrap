# Install Xcode

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update

brew install cask
brew cask update

brew cask install atom
atom Documents

brew cask install \
  google-chrome \
  java \
  vagrant \
  vagrant-manager \
  virtualbox \
  virtualbox-extension-pack \
  vlc

brew install \
  bash \
  docker \
  docker-compose \
  docker-machine \
  git \
  htop \
  macvim \
  nvm \
  python \
  python3 \
  vim \
  wget

pip install --upgrade pip setuptools

brew linkapps python3
pip3 install --upgrade pip setuptools

sudo -i
echo '/usr/local/bin/bash' >> /etc/shells

brew linkapps macvim

mkdir ~/.nvm

echo 'export NVM_DIR=~/.nvm' >> ~/.bash_profile
echo 'source $(brew --prefix nvm)/nvm.sh' >> ~/.bash_profile

nvm install v4.2.2
nvm alias default v4.2.2
