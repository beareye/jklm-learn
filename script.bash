#!/bin/bash
numberOfReturnValues=${1-30}
while True
do
    read syllable
    echo -e "$syllable \n"
    grep $syllable words.txt > temp.txt
    shuf -n $numberOfReturnValues temp.txt
    echo -e "======================================END======================================"
    echo -e "\n\n\n\n\n"
done