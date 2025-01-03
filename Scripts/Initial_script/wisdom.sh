#!/bin/bash

# This script provides wisdom 

FORTUNE=/usr/games/fortune

while true; 
do
  echo "On which topic do you want advice"
sleep 2

cat << topics
Politics
Avengers
K-pop
Sport
Magic
Love
Literature
Drugs
Sex and Marijuana
education
topics

echo "Make your choice: "
read choice

sleep 2

echo "Free advice on the topic of $choice: "

echo
$FORTUNE $topic

done
