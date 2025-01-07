#!/bin/bash

# Script update system's packages and upgrades them
echo "Starting the update as of $(date)"

sudo apt update && sudo apt upgrade -y >> /dev/null

# Removes unncessary packages

sudo apt autoremove -y >> /dev/null

echo "Your system is up to date!"
