#!/bin/bash

#This script will test if you have given a leap year or not.

echo "Type the year you want to check (4 digits)...ENTER:"

read year

if (( ("$year" % 400) == "0" )) || (( ("$year" % 4 == "0") && ("$year" % 100 != "0") )); then
  echo "$year is a leap year."
else
  echo "This is not a leap year."
fi
