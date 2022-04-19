#!/usr/bin/env bash

#Asking for palyers numbers
echo "Give your numbers (5 + 1 bonus)"
read playersNumbers

#Taking the lottery numbers from file after asking user for the date
echo "What date numbers you want to check? (format: DDMMYY)"
read dateToLookFor
lotteryNumbersString="$(cat $dateToLookFor)"

#Converting the string into an array
lotteryNumbers=(`echo $lotteryNumbersString | tr ' ' ' '`)

#Converting the string into an array
playersNumbers=(`echo $playersNumbers | tr ' ' ' '`)

echo ${lotteryNumbers[@]}
echo ${playersNumbers[@]}

counter=0
for((i=0;i<${#playersNumbers[*]}-1;i++)); do
    for((j=0;j<${#lotteryNumbers[*]}-1;j++)); do
        if [ ${playersNumbers[i]} = ${lotteryNumbers[j]} ]; then
             let counter++
        fi
        
    done
done

echo You got $counter numbers

if [ ${lotteryNumbers[${#lotteryNumbers[*]}-1]} = ${playersNumbers[${#playersNumbers[*]}-1]} ]; then
     echo "You got the bonus number!!!"
else 
    echo "You did not get the bonus number"
fi

exit 0

