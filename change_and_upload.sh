#!/bin/bash

rand=$(( $RANDOM % 3 ))

if [ $rand -ge 1 ]
then

    echo "last ran $(date)" > important_info.txt

    source secrets.sh

    array[0]="some minor updates"
    array[1]="changed file structure"
    array[2]="cleaning..."
    array[3]="major revamp"

    size=${#array[@]}
    index=$(($RANDOM % $size))

    git stage "important_info.txt"
    git commit -m "${array[$index]}"

    git push https://$user:$pass@github.com/EliBildman/TotallyRealProject.git
else

    echo "did not run"

fi