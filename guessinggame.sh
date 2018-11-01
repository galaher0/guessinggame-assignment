#!/usr/bin/env bash
# File: guessinggame.sh

function compare {

	local number_of_files=$(ls | wc -l)
	local guess=-1

	while [[ $guess -ne $number_of_files ]]
	do
		echo "How many files are in the current directory?"
		read guess
		if [[ $guess -gt $number_of_files ]]
		then
			echo -e "Thank you. You entered $guess. Sorry, but it is too high. Let's try again.\n"
		elif [[ $guess -lt $number_of_files ]]
		then
			echo -e "Thank you. You entered $guess. Sorry, but it is too low. Let's try again.\n"
		else
			echo "Congratulations! Your guess is correct. End of the program."
		fi
	done
}
compare
