#!/bin/bash

#du -d 5 -h /etc | sort -hr | head -5
#diskusage.sh -n /etc

if [[ $1 == '-d' ]]; then
  list_all_dir_and_files=true
  shift 1
fi

if [[ $1 == '-n' && $2=~^[0-9]+$ ]]; then
  entries=$2
  shift 2
else
  entries=8
fi

list_disk_usage() {
  if [[ "$list_all_dir_and_files" == true ]]; then
  #for -d flag
  sudo du -ah $1 | sort -hr 
  echo -e " \n Total number of entries displayed = $number_of_files"
else
  #for -n flag
  sudo du -h $1 | sort -hr | head -$entries
  echo -e " \n Total number of entries displayed = $entries"
fi
}


directory=$@
# number_of_files=$(ls -l "$directory" | grep -c "^")
number_of_files=$(find "$directory" -type f -o -type d | wc -l)


for dir in $directory; do
  echo -e " \n Disk Usage for directory: $dir \n"
  list_disk_usage $dir
done

echo -e " \n The total number of files in '$directory' = $number_of_files"

 echo -e " \$1: $1 \n \$2: $2 \n \$3: $3"
