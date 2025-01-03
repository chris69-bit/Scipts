#!/bin/bash

# This script backups the home directory and stores the backup as zip file. The type of compression is chosen by user
# checking for arguments
if [ ! -z $1 ]
then
  echo "Usage: $0 <No Arguments>"
  exit 1
fi

#Initializing the script nothing important
echo "This is a backup of the home directory as of $(date)"
echo "let's begin..."
sleep 3

# Setting up the script to only execute in the home directory
if [ "$(echo $HOME)" != "$(pwd)" ]
then
  echo "The script should be run in the home directory"
  sleep 1
  echo "Try <cd ~/>"
  exit 1

else
  echo "Confirm that $(echo $HOME) is your home directory[yes/no] then press ENTER: "
  read confirmation
    if [ "$confirmation" == "yes" ]
    then
      echo "Thanks for the confirmation"
    else
      echo "Sorry we cannot proceed"
    fi
fi

# Setting variables to be used in the script
HOMEDIR=$(echo $HOME)
BACKUP_DIR=/var/backups
FULL_BACKUP_FILE=$DESTBACKUP/fullBackUp.tar
INCREMENTAL_BACKUP=$DESTBACKUP/incrementalBackUp.tar

#sudo mkdir -p $BACKUP_DIR

# Declaring functions
# This function checks space available in the /var/backups and also space used in the home directory
check_space(){
  local required_space=$(du -s | awk '{print$1}')
  local available_space=$(df $BACKUP_DIR | tail -1 | awk '{print$4}')

  if [ $required_space -gt $available_space ];
  then
    echo "Not enough space in $BACKUP_DIR for the backup"
    exit 1  
  else "The space available for the backup is enough"
  fi
}

# This function performs full backup of the home directory
full_backup(){
  echo "Performing full backup of $HOME_DIR to $FULL_BACKUP_FILE"
  tar -cvp -f $FULL_BACKUP_FILE $HOME_DIR

}

# This function performs incremental backup of the home directory
incremental_backup(){
  echo "Performing incremental backup of $HOME_DIR to $INCREMENTAL_BACKUP"
  tar -cvp --file="$INCREMENTAL_BACKUP_FILE" --listed-incremental="$FULL_BACKUP_FILE" "$HOME_DIR"

}


# Checking the the space
check_space


# Promopt user to choose the type of backup they want
echo "What type of backup would you prefer[FULL/INCREMENTAL]? "
read prefer

if [ "$prefer" == "FULL" ]
then
  full_backup
elif
  [ "$prefer" == "INCREMENTAL" ]
then
 incremental_backup
else
 echo "You should always backup your files, it's advisable"
 exit 1
fi

echo "BACKUP COMPLETED SUCCESSFULLY"












