#!/usr/bin/bash

echo "__________________________________________________"
echo "Welcome to High-Low game!"
echo ' '
echo -n "Please enter your player name: "
read -r name

echo ' '

# Make the game re-playable using loop
while true; do

	echo "Challenge levels:"	
	echo "  Easy    (*): Guess a number between 1 ~ 10"
	echo "  Normal (**): Guess a number between 1 ~ 100"
	echo "  Hard  (***): Guess a number between 1 ~ 1000"

	echo ' '
	echo -n "Please select a level: "
	read -r level

	echo ' '
	echo "________________________"
	echo "Name: $name"
	echo "Level: $level"
	echo "________________________"
	echo "Game, start!"
	
	# Generate random number base on the chosen level
	RANDOM_GENERATED_NUMBER=0	
	
	if [[ $level == "Easy" ]]; then
		RANDOM_GENERATED_NUMBER=$((1 + $RANDOM % 10))         # Easy Level (1 ~ 10)
		echo -n "Please pick a number between (1 - 10): "
	elif [[ $level == "Normal" ]]; then
		RANDOM_GENERATED_NUMBER=$((1 + $RANDOM % 100))		  # Normal Level (1 ~ 100)
		echo -n "Please pick a number between (1 - 100): "
	else
		RANDOM_GENERATED_NUMBER=$((1 + $RANDOM % 1000))	      # Hard Level (1 ~ 1000)
		echo -n "Please pick a number between (1 - 1000): "
	fi
	
	# Now the game begins, player will try to guess the correct # using given feedbacks
	guesses=0
	while true; do

		read -r number
		guesses=$(($guesses+1))
		if [[ $number -eq $RANDOM_GENERATED_NUMBER ]]; then
			echo "Congratulations, $name! You guessed correctly!"
			echo "#Guesses: $guesses"
			if [[ $level == "Easy" ]]; then
				echo "_____________________" >> ./Easy_Level_log.txt
				echo "Name: $name" >> ./Easy_Level_log.txt
				echo "guesses: $guesses" >> ./Easy_Level_log.txt
			elif [[ $level == "Normal" ]]; then
				echo "_____________________" >> ./Normal_Level_log.txt
				echo "Name: $name" >> ./Normal_Level_log.txt
				echo "guesses: $guesses" >> ./Normal_Level_log.txt
			else
				echo "_____________________" >> ./Hard_Level_log.txt
				echo "Name: $name" >> ./Hard_Level_log.txt
				echo "guesses: $guesses" >> ./Hard_Level_log.txt
			fi
			break
		elif [[ $number -gt $RANDOM_GENERATED_NUMBER ]]; then
			echo "Incorrect! Too HIGH, try again."
		else
			echo "Incorrect! Too LOW, try again."	
		fi
		
	done
	
	# allow player to have another go
	echo ' '
	echo -n "Would you like to play again? (y/n): "
	read -r continue
	if [[ $continue == 'n' ]]; then
		echo "___________________________________"
		echo "Thank you for playing, come again."
		echo "___________________________________"
		break
	else
		continue
	fi
done
