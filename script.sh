#!/bin/bash
numberOfReturnValues=${1-30}
while True
do
    read args
    args_temp=( $args )
    syllable=${args_temp[0]}
    letter=${args_temp[1]}
    if [ -z "$letter" ]     
    then
        grep -i $syllable words.txt > temp.txt
    else
        grep -i $syllable words.txt | grep -i $letter > temp.txt
    fi
    shuf -n $numberOfReturnValues temp.txt
    echo -e "======================================END======================================"
    echo -e "\n\n\n\n\n"
done
