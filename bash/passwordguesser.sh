#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

myString="TestString"
referenceString="981220"

[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."

#Task-1
read -p "Enter a password guess:" myString

#Task-2
if [ $myString = $referenceString ]
then
	echo "You guessed the password!"
else
	echo "The password eludes you..."
fi

#Task-3
for try in {1..3}
do
	read -p "Try ($try): Enter a password guess:" myString
	if [ $myString = $referenceString ]
	then
		printf "You guessed the password!\n"
		break
	else
		echo "The password eludes you..."
	fi
done
