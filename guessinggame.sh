#!/usr/bin/env bash
echo "[This is a guessing game]" 

file_count=$(ls -1 | wc --l) 

function question
{
echo "how many files are in this current directory" 
read user_input
echo "you selected $user_input" 
}

question

while [[ $user_input -ne $file_count ]]
do 
	if [$user_input -lt $file_count]
	then 
		echo "This guess is too low."
	else 
		echo "This guess is too high."

	fi 

question

done

echo "Well done! You guessed correctly" 
echo "List of Files" && ls -1


