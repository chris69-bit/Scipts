#!/bin/bash 
#This script clears the terminal then fetches infomation and displays it to the 
#user
#local variables are also created and global variables are called

clear                                                #clears the terminal

echo "The script starts now"
sleep 2

echo "Hi, $USER!"                                    #the $ is used to call variables

echo "I will now fetch you a list of connected users."
sleep 2

w                                                     #this displays users logged in 
sleep 2
echo "I will now set two variables."                  #creating the local variables

COLOR="Black"
VALUE="8"

echo "This is a word: $COLOR and a number: $VALUE"    #using the local variables created

echo "I will now give you back your prompt"

