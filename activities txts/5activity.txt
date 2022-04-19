#!/usr/bin/env bash

read -p "Give number to reverse: " number

length=${#number}

for (( i=$length-1; i>=0; i-- ));
do
    reverseNum=$reverseNum${number:$i:1}
done

echo "You gave $number I give you $reverseNum"

exit 0
