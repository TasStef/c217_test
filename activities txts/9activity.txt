#!/usr/bin/env bash

read -p "Give file's name: " file

if  test -f "$file" ; then
    echo "File $file exists"
else
    touch $file
   echo "File $file was created"
fi

exit 0
