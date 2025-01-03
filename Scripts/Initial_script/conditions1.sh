#!/bin/bash

#adding an htop package 

pack=$1

if ( -f /usr/bin/$pack )
  then
    echo "the $pack exists"

else 
  ( sudo apt update && sudo apt install -y $pack )
    echo "the $pack was insatalled"
fi

$pack
