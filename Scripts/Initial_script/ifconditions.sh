#!/bin/bash

#Prints information about the current month

month=$(date +%B)
echo "let's see the month of the year"

sleep 3
if [ "$month" == "Julai" ]
  then
    echo "This is the month of $month 'July'"

elif [ "$month" != "Julai" ]
  then
    echo "This is not the month of July"
fi

sleep 3
echo "checking the kind of year we are having this year(leap year or not)"
echo "please wait..."

sleep 3
year=$(date +%A)

if [ $(($year % 4)) -eq 0 ]
  then
    echo "This is a leap year, February has 29 days"
else
  echo "This not a leap year, February has 28 days"

fi
   


