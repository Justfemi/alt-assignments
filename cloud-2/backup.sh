#!/bin/bash

# sudo apt install tar
current_dir=$PWD
timestamp=$(date +'%Y_%m_%d_%H-%M-%S')
source_directory=$1
destination_directory=$2
backup_directory=$destination_directory/backup_$timestamp.tar.gz
# echo $backup_directory


# echo $current_dir

if [[ -d "$destination_directory" ]]; then
  echo "$destination_directory already exists"
else
   mkdir $destination_directory
  echo "Successfully Created backup directory: ($destination_directory)"
fi


tar -cvzf "$backup_directory" -C "$(dirname "$source_directory")" "$(basename "$source_directory")" && echo "Backup Created Succesfully: $backup_directory"