#!/bin/bash

# This script is a simple compilation of various tools i have learned so far

if [ -d /etc/pacman.d ]
then
  # if the host is based on Arch, this first part is run
  sudo pacman -Syu
fi

if [ -d /etc/apt ]
then
  #if the host is based on Debian or Ubuntu then the apt version of the command is run
  sudo apt update && sudo apt install -y dist-upgrade 
  echo "The installation is complete"

fi
