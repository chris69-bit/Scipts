#!/bin/bash

# This script runs a simple while loop statement


num=$1

while [ $num -le 10 ]
do
  echo $num
  num=$(( $num +1 ))
  sleep 1

done
