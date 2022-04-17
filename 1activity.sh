#!/usr/bin/env bash

echo "$USER"


dayOfMonth=$(date +%d)
month=$(date +%m)
year=$(date +%Y)

echo $dayOfMonth $month $year
date +%T
pwd

ls -ltr | wc -l 
ls -laSr  | tail -n1

exit 0