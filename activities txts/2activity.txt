#!/usr/bin/env bash

echo Type folder\'s name

while [ true ]; do
    read folder

    if [ -d "$folder" ]; then
        break
    fi

   echo -e "This directory doesn't exist. \nPlease make sure to type an existed directory"
   
done


currDate=$(date +%Y%m%d)
cd "$folder"


for file in *
do
    mv "$file" "$file.$currDate" 
done    

exit 0