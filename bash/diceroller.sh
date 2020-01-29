#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling...
$(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1 )) rolled
"
echo "
You are rolling a 5 pair of Six-Sided Dice.
Now it's Rolling...
$(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1 )), $(( RANDOM % 6 + 1 )), $(( RANDOM % 6 + 1 )), $(( RANDOM % 6 + 1 )) rolled
"

echo "
You are rolling a pair of twenty-Sided Dice.
Now it's Rolling...
$(( RANDOM % 20 + 1)), $(( RANDOM % 20 + 1 )) rolled
"
