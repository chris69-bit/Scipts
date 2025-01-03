#!/bin/bash

# This is a simple script that dispaly the path to the home directory and the terminal used

echo "$USER is the current logged in user" 
echo "For this user doesnot have root priviledges but you can change that using sudo..."
sleep 2

echo "Your home directory location is defined by the path $HOME"
sleep 2
echo "You are using the $TERM as your terminal"
echo "The following are the services started by runlevel 3 on your system"
echo "$(ls /etc/rc3.d/S*)"


echo "That was simple information hope it was useful"

