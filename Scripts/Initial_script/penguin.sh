#!/bin/bash

#This script lets you present menus to Tux. He will only e happy when given a fish. we've added more animals to make it more fun.

name=$1

echo "Hello $name, we are here to serve you. Take a look at our menus"

sleep 3

echo "We will surely serve you the fish."

menu=$2
animal=$3

if [ "$menu" == "fish" ]; then
  if [ "$animal" == "Tilapia" ]; then
    echo "Hmmmmm fish... $name is happy!"
  elif [ "$animal" == "dolphin" ]; then
    echo "\a\a\aPweetpeettreetppeterdepweet!\a\a\a"
  else "*pprrrrrrrt*"
  fi
else
  if [ "$animal" == "Tilapia" ]; then
    echo "$name don't like that shit. Tux wants fish!!"
    exit 1
  elif [ "$animal" == "dolphin" ]; then
    echo "\a\a\a\aPweepwishppeetdepweett!!"
    exit 2
  else
    echo -e "Will you read this sign?! Don't feed the "$animal"s!\n"
    exit 3
  fi
fi
