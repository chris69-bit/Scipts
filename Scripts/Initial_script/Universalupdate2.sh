#!/bin/bash

#This script is an update of the Universal script

echo "Hello $USER, we want to check the type of Linux distro your host is running on"
sleep 2

echo "checking..."
sleep 2

echo "Your host is running on $(uname -a)"
sleep 1

echo "That was useful"

sleep 3
release=/etc/os-release

if grep -q "Arch" $release
then 
  # if host is running on Arch then pacman version command is run
  sudo pacman -Syu
  echo "The file was installed"

fi

if grep -q "Ubuntu" $release
then
  # if host is running on Ubuntu then apt version command is run
  sudo apt update && sudo apt install dist-upgrade
  echo "Your file is now installed"

fi

