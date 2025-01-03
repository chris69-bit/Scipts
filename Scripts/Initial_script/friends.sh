#!/bin/bash

#This script registers a persons friend's address book up to date.

friends="/var/tmp/odhiambo/friends"

echo "Hello $USER. This script will register you in Odhiambo's friends database."
echo "Let's begin..."
sleep 3

echo -n "Enter youe name and press [ENTER]: "
read name

echo -n "Enter your gender and press [ENTER]: "
read -n 1 gender

grep -i "$name" "$friends"

if [ "$?" == "0" ]; then
  echo "You are already registered, quitting..."
  exit 1
elif [ "$gender" == "m" ]; then
  echo "You are added to Odhiambo's friends list."
else 
sleep 2
  echo -n "How old are you?"
  read age 
  if [ $age -lt 25 ]; then
    echo -n "Which colour of hair do you have? "
    read colour
    echo "$name $age $colour" >> "$friends"
    echo "You are added to Odhiambo's friends list. Thank you so much!"
  else
    echo "You are added to Odhiambo's friends list."
    exit 1
  fi
fi













