#!/usr/bin/env bash

declare -A quiz

#Listing the questions and answers in key/value apirs
quiz["K is worth four points in Scrabble"]="F"
quiz+=( ["Alexander Fleming discovered penicillin"]="T" )
quiz+=( ["Fish cannot blink"]="T" )
quiz+=( ["In the English language there is no word that rhymes with orange"]="T" )
quiz+=( ["The only letter not in the periodic table is the letter J"]="T" )
quiz+=( ["Thomas Edison discovered gravity"]="F" )
quiz+=( ["An octopus has three hearts"]="T" )
quiz+=( ["Australia is wider than the moon"]="T" )
quiz+=( ["'A' is the most common letter used in the English language"]="F" )
quiz+=( ["The black box in a plane is black"]="F" )

i=1
score=0
for key in "${!quiz[@]}"; do
    
    echo Question $i: "${key}"
    read -p "True (T) or False (F)?: " answer

    if [ "$answer" = "${quiz["$key"]}" ]; then
        let score++
    fi

    let i++
done


printf "\n---You found $score correct answers---"
printf  "\n\tSolutions:\n" 
i=1
for key in "${!quiz[@]}"; do
   echo "$i."${key}" : "${quiz["$key"]}""
   let i++
done

exit 0