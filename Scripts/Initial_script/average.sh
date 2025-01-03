#!/bin/bash

# This script does a basic averaging of intergers

SCORE="0"
AVERAGE="0"
SUM="0"
NUM="0"

echo "Lets calculate the average of your makrs"
sleep 3

while true;
do
  echo "Enter your score [0-100%] ('q' for quitting): "
  read SCORE
 
  if (("$SCORE" < "0")) || (("$SCORE" > "100"));
  then
    echo "Enter a valid number. come on, Try again: "
  elif [ "$SCORE" == "q" ]
  then
    echo "Average rating: $AVERAGE%"
    break
  else
    SUM=$[$SUM + $SCORE]
    NUM=$[$NUM + 1]
    AVERAGE=$[$SUM / $NUM]
  fi
done

echo "Exiting..."
sleep 2
