#!/bin/bash

#Checks the exit status of the previous command

grep $USER /etc/passwd

if [ $? -eq 0 ]
  then
    echo "That was a good job the command was successful"

else 
  echo "womp!! womp!! womp!!..read more"

fi 
