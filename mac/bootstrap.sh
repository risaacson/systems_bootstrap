# Install Xcode

# This sucks but we need to pull down the files and get brew installed.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure that we are healthy and do an update.
brew doctor
brew update

# Install cask and make sure that we are updated.
brew install cask
brew cask update

# Install the Atom editor and open up documents to start taking notes.
brew cask install atom
atom Documents

# Install application via cask.
brew cask install \
  google-chrome \
  java \
  vagrant \
  vagrant-manager \
  virtualbox \
  virtualbox-extension-pack \
  vlc

# Install applications.
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

# Make sure that pip and setuptools are up to date
pip install --upgrade pip setuptools

# Link the application for python3 and make sure that pip and setuptools are up to date
brew linkapps python3
pip3 install --upgrade pip setuptools

# Add /usr/local/bin/bash into the system shells
sudo -i
echo '/usr/local/bin/bash' >> /etc/shells

# Link macvim into the Applications directory.
brew linkapps macvim

# Make sure that we configure bash so that we can leverage nvm
mkdir ~/.nvm
echo 'export NVM_DIR=~/.nvm' >> ~/.bash_profile
echo 'source $(brew --prefix nvm)/nvm.sh' >> ~/.bash_profile

# Tell NVM to install a working version of node.
nvm install v4.2.2
nvm alias default v4.2.2

# Get docker machine to create a local VM with docker engine installed.
docker-machine create --driver virtualbox dev

# Install Kubernetes tools
brew install \
  kubernetes-ctl \
  kubernetes-helm \
  kubectx

# Install Dive for looking at container images
brew tap wagoodman/dive
brew install dive
