#!/bin/bash

# Installing apt essentials
sudo apt-get install -y build-essential libssl-dev cowsay curl xclip

# Nodejs and NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvmsudo
nvm install 14.17.3
nvm use 14.17.3
node -v


# Git - a version control system
sudo apt-get update
sudo apt-get install -y git

# Yarn and usefull global packages
npm install -g yarn
yarn global add nodemon
yarn global add loopback-cli
yarn global add forever
yarn global add ungit
yarn global add gulp-cli
yarn global add generator-angular-fullstack
yarn global add caprover

# Mongodb, Installing and starting server
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
sudo service mongod status

# maven 
sudo apt-get install maven -y

# Vim, Curl, Python - Some random useful stuff
sudo apt-get install -y vim curl software-properties-common
sudo apt-get install -y python-dev, python-pip
sudo apt-get install -y libkrb5-dev

# Installing JDK and JRE
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk

# Gimp Image Editor
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

# Archive Extractors
sudo apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller

# FileZilla - a FTP client
sudo apt-get install -y filezilla

# TLP - saves battery when Ubuntu is installed on Laptops
sudo apt-get remove laptop-mode-tools
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install -y tlp tlp-rdw smartmontools ethtool
sudo tlp start
sudo tlp stat

# Erlang - Actor Concurrency Model based Programming Language
sudo apt-get install -y erlang

# Sticky Notes
sudo apt-get install -y xpad

# KVM acceleration and cpu checker
sudo apt-get install -y cpu-checker
sudo apt-get install -y qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
sudo apt-get install -y virt-manager
sudo apt-get install -y lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# RPM and alien - sometimes used to install software packages
sudo apt-get install -y rpm
sudo apt-get install -y alien dpkg-dev debhelper

# Dictionary Client and Server with Thesaurus
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
sudo apt-get install -y dict
sudo apt-get install -y dictd
sudo apt-get install -y dict-gcide
sudo apt-get install -y dict-wn
sudo apt-get install -y dict-devil
sudo apt-get install -y dict-moby-thesaurus

# For Android Studio (Gradle Daemon)
#touch ~/.gradle/gradle.properties && echo "org.gradle.daemon=true" >> ~/.gradle/gradle.properties

# Fish
sudo apt install fish

# Docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup-setup.sh
sh rustup-setup.sh -y
rm rustup-setup.sh

cargo install cargo-update

# Anaconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda

eval "$(${HOME}/anaconda/bin/conda shell.bash hook)"
conda init
conda config --set auto_activate_base false

# VLC
sudo snap install vlc

# VSCode
sudo snap install code --classic

# bpytop
sudo apt install bpytop

# Starship Prompt

curl -fsSL https://starship.rs/install.sh > /tmp/installStarship.sh
sudo sh /tmp/installStarship.sh -y
rm /tmp/installStarship.sh -f

# Install app image launcher

wget -O - https://github.com/TheAssassin/AppImageLauncher/releases/latest/download/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb > /tmp/appimagelauncher.deb
sudo apt install /tmp/appimagelauncher.deb -y
rm /tmp/appimagelauncher.deb -f