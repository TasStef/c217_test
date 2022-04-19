#!/usr/bin/env bash

#Lottery game 1-50 + pool extra ball 1-10



function rollBall () {
    min=$1
    max=$2  
    number=$(expr $min + $RANDOM % $max)
    
}

function checker () {
    
    newNum=$1

    for((i=0;i<${#lotteryNumbers[*]}-1;i++)); do
        if [ $lotteryNumbers[i] = newNum ]; then
          exists=true
          return 0          
      fi    
    done

    exists=false

    return 0
}


index=0
while (( ${#lotteryNumbers[*]}<5 )); do
    rollBall 1 50
    lotteryNumbers[index]=$number
    checker $lotteryNumbers[index]
    if (( !exists )); then
         let index++
    fi   
done

# This is the run for the extra number 1 - 10
rollBall 1 10
lotteryNumbers[index]=$number

currDate=$(date +%d%m%y)

echo "${lotteryNumbers[*]}" > "$currDate"

exit 0

