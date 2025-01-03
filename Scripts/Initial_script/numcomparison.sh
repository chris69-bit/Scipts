#!/bin/bash

#For simple Arithmetic comparison 

num=$1

echo "Let's see your productivity of the day, please wait..."
sleep 3

if [ $num -gt 150 ]
  then 
    echo "Worked enough for the day, Please head home."

else 
  echo "You need to put more effort"
fi
