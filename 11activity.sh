#!/usr/bin/env bash


echo 5 6 3 7 4 4 9 6 7 9 8 2 3 6 4 5 1 1 3 10 12 > activity11
strFile=$(cat activity11)

strSize=$(echo $strFile | wc -c)


: 'j=0
for((i=0;i<$strSize;i+=2)); do
    let temp=$i/2
    printf "file value $temp: ${strFile:$i:2}\n"
    array[j]=${strFile:$i:2}
    echo array value $j: ${array:$j:2}
    let j++ 
done'

echo ---"${strFile:1:1}"---
index=0
for((i=0;i<$strSize;i++)); do
    
    s=0
    j=i
    while [ "${strFile:$j:1}" != " " ]; do
        #echo ---"${strFile:$j:1}"---
        let s++
        let j++
        if [ "${strFile:$j:1}" == '' ]; then
            break
        fi
    done
    #echo "i=$i j=$j s=$s"
    array[$index]="${strFile:$i:$s}"
    let index++
    echo aaaa"${strFile:$i:$s}"aaaa
    echo ${array[$index]}
    
    let i=i+s
done

echo heloo ${array[0]}
echo byr ${array[2]}