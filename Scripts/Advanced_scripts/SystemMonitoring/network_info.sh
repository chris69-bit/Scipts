#!/bin/bash

# Script gives information about your network and also some infomation about a site of your choice
echo "-------------------------------------"
echo "Hello $USER, we will give information about your ip"
echo "Do you consent(y/n)"
read agree

if [ $agree == "y" ]
then
  echo "Your public ip: $(curl -s ifconfig.me)"
  echo "Your private ip: $(hostname -I | awk '{print $1}')"
  echo "Default gateway: $(ip route | grep default | awk '{print $3}')"
 
  echo ""
else
 echo "We understand your concern for privacy. Exiting."
 exit 1
fi

echo "-------------------------------------"
echo "Would like to see other relevant network information?(y/n)"
read other
if [ $other == "y" ]
then
  echo "Scanning open ports on your machine(localhost)..."
  nmap -T4 127.0.0.1
else
 echo "Okay, no furhter information will be provided"
 exit 2
fi
##################################
echo "-------------------------------------"
echo "We will give information about a website of your choosing"
echo "Enter a domain or IP address to query:"
read query

# Check if the user input is valid
if [[ -z "$query" ]]; then
    echo "No input provided. Exiting."
    exit 1
fi

echo "Querying WHOIS information for: $query"
whois_output=$(whois $query)

# Extract relevant information using grep and awk
echo "Relevant WHOIS Information:"
echo "-------------------------------------"

# Domain Owner/Registrant
echo "Domain Owner/Organization:"
echo "$whois_output" | grep -i "registrant" | head -n 3

# Registrar
echo "Registrar:"
echo "$whois_output" | grep -i "registrar" | head -n 1

# Registration Dates
echo "Domain Registration Dates:"
echo "Created: $(echo "$whois_output" | grep -i "creation date" | head -n 1 | awk '{print $NF}')"
echo "Expires: $(echo "$whois_output" | grep -i "registry expiry date" | head -n 1 | awk '{print $NF}')"

# Name Servers
echo "Name Servers:"
echo "$whois_output" | grep -i "name server"

# Abuse Contact (for IP queries)
echo "Abuse Contact:"
echo "$whois_output" | grep -i "abuse" | head -n 1

# Autonomous System and Network Information (for IPs)
echo "Network Information:"
echo "$whois_output" | grep -i "inetnum\|netrange\|aut-num"

# Location (Country, if available)
echo "Location:"
echo "$whois_output" | grep -i "country" | head -n 1

echo "-------------------------------------"

