#!/bin/bash

# Installing apt essentials
sudo apt-get install -y build-essential libssl-dev cowsay curl xclip gnome-keyring pkg-config cowsay uuid-runtime git

# Clear apt cache
sudo apt autoremove

# Install Wine
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ hirsute main' -y
sudo apt update
sudo apt install --install-recommends winehq-stable -y



# Mongodb, Installing and starting server
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
# echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
# sudo apt-get update
# sudo apt-get install -y mongodb-org
# sudo service mongod start
# sudo service mongod status

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


# Erlang - Actor Concurrency Model based Programming Language
sudo apt-get install -y erlang


# KVM acceleration and cpu checker
sudo apt-get install -y cpu-checker
sudo apt-get install -y qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
sudo apt-get install -y virt-manager
sudo apt-get install -y lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# RPM and alien - sometimes used to install software packages
sudo apt-get install -y rpm
sudo apt-get install -y alien dpkg-dev debhelper

# Dictionary Client and Server with Thesaurus
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe" -y
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
"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Ardunio
wget -O arduino-ide.zip https://downloads.arduino.cc/arduino-ide/arduino-ide_2.0.0-beta.9_Linux_64bit.zip
sudo unzip -o arduino-ide.zip -d /tmp/
sudo rm -rfd /usr/share/arduino/
rm -rf arduino-ide.zip
sudo mkdir /usr/share/arduino/
sudo mv /tmp/arduino-ide_2.0.0-beta.9_Linux_64bit/* /usr/share/arduino/

wget -O /usr/share/arduino/logo.png https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Arduino_Logo.svg/1024px-Arduino_Logo.svg.png

sudo echo "[Desktop Entry]
Encoding=UTF-8
Version=2.0.0
Type=Application
Terminal=false
Exec=/usr/share/arduino/arduino-ide
Name=Arduino IDE
Logo=/usr/share/arduino/logo.png" > /usr/share/applications/cc.arduino.idev2.desktop

chmod -rw-r--r-- /usr/share/applications/cc.arduino.v2.desktop
chmod -R 755 /usr/share/arduino/

# VLC
sudo snap install vlc

# VSCode
sudo snap install code --classic

# Blender
sudo snap install blender --classic

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Minecraft
wget https://launcher.mojang.com/download/Minecraft.deb
sudo apt install ./Minecraft.deb


# bpytop
pip install psutil
sudo apt install bpytop

# gitkraken
sudo snap install gitkraken

# Starship Prompt

curl -fsSL https://starship.rs/install.sh > /tmp/installStarship.sh
sudo sh /tmp/installStarship.sh -y
rm /tmp/installStarship.sh -f

eval "$(starship init bash)"

# Install app image launcher

wget -O /tmp/appimagelauncher.deb https://github.com/TheAssassin/AppImageLauncher/releases/latest/download/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
sudo apt install /tmp/appimagelauncher.deb -y
rm /tmp/appimagelauncher.deb -f