#!/usr/bin/env bash
num_files=$(ls -1 | wc -l)

function hello() {
	echo "Welcome! Please enter a guess for the number of files in this folder"
}

hello

read uguess
 
while [[ $uguess -ne $num_files ]]
 do
        if [[ $uguess -gt  $num_files ]]
        then
                echo "Too high - please try again"
        else
                echo "Too low - please try again"
        fi
        read uguess
 done

 echo "Good guess"
