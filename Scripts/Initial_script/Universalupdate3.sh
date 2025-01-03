#!/bin/bash

# This script is an update from universalupdate2 involves a lot of redundant commands but the important stuff is the redirection

echo "Hello $USER, let's do more in your host machine. This script redirects the stdout and stderr of commands run"

sleep 3

echo "checking file existence..."
sleep 3

release=/etc/os-release
release_out=/var/log/release_out
release_err=/var/log/release_err

if grep -q "Arch" $release 
then
  sudo pacman -Syu >> $release_out 2>> $release_err
  if [ $? -ne 0 ]
  then
    echo "An Error Occured during the installation. Check $release_err"
  fi
fi

if grep -q "Ubuntu" $release || grep -q "Pop" $release
then
  sudo apt update >> $release_out 2>>$release_err
  sudo apt dist-upgrade >> $release_out 2>> $release_err
  if [ $? -ne 0 ]
  then
    echo "An Error Occurred during installation please check $release_err file"
  fi
  echo "The package was installed successfully"
fi
