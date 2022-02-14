#!/bin/bash

# Script to install direwolf software tnc

echo "******************** Updating the system ********************"

sudo apt update -y
sudo apt full-upgrade -y 
sudo apt autoremove -y
sudo apt clean -y
sudo apt autoclean -y

echo "******************** Installing prerequisites ********************"

sudo apt-get install git -y
sudo apt-get install gcc -y
sudo apt-get install g++ -y
sudo apt-get install make -y
sudo apt-get install cmake -y
sudo apt-get install libasound2-dev -y
sudo apt-get install libudev-dev -y

echo "******************** Installing direwolf ********************"

cd ~/src
git clone https://www.github.com/wb2osz/direwolf
cd direwolf
git checkout dev
mkdir build && cd build
cmake ..
make -j4
sudo make install
make install-conf

echo "******************** installation complete ********************"
