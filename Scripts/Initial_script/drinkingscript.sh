#!/bin/bash

echo "Hello, What is your name?."

read name
echo "Nice to meet you $name"
sleep 3

echo "So before i let you in on the fun, i just to know your age"
echo "Is that okay(Yes/No)?"

read answer
if [ "$answer" == "Yes" ]
then
  echo "Okay then, let's continue..."
sleep 2

elif [ "$answer" == "No" ]
then 
  echo "Sorry you can't continue!!"
  exit 1

else
  echo "Please input a valid answer"
  exit 2
fi

echo "How old are you?"
read age

if [ $age -lt 21 ]
then
  echo "Sorry you are still quite young to be having alcohol"

else
  echo "Welcome $name, hope you enjoy the party"
fi
sleep 3


echo "Before you go, i want to let you in on a fun fact, did you know that an adult drinks about on average 100ltrs of beer every year..."

