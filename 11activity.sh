#!/usr/bin/env bash


echo 5 6 3 7 4 4 9 6 7 9 8 2 3 6 4 5 1 1 3 10 12 7 7 7 > activity11
strFile=$(cat activity11)

strSize=$(echo $strFile | wc -c)

#Creating an array of numbers out of the string
index=0
for((i=0;i<$strSize;i++)); do
    
    s=0
    j=i
    while [ "${strFile:$j:1}" != " " ]; do

        let s++
        let j++
        if [ "${strFile:$j:1}" == '' ]; then
            break
        fi
    done

    array[$index]="${strFile:$i:$s}"
    let index++
    let i=i+s
done

echo "${array[*]}"

#sorting array with insertion sort
arraySize=${#array[@]}
for((i=1;i<$arraySize;i++)); do
    for((j=$i;j>0;j--)); do
        if [ "${array[$j]}" -gt "${array[$j-1]}" ]; then
            temp="${array[$j]}"
            array[$j]=${array[$j-1]}
            array[$j-1]=$temp
        else
            break
        fi
    done
done

echo "${array[*]}"

for((i=0;i<$arraySize-1;i++)); do

    printf "i = "${array[$i]}" \ti+1 = "${array[$i+1]}"\n"

    if [ "${array[$i]}" = "${array[$i+1]}" ]; then
        unset array[$i]
    fi
done

echo "${array[*]}"