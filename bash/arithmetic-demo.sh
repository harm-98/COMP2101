#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

firstnum=5
secondnum=2
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF

echo Please Enter the First Number
read firstNum
echo Please Enter the Second Number
read secondNum
sum=$((firstNum + secondNum))
sub=$((firstNum - secondNum))
mul=$((firstNum * secondNum))
dividend=$((firstNum / secondNum))
remainder=$((firstNum % secondNum))
power=$((firstNum**secondNum))
cat <<EOF
Addition of $firstNum and $secondNum is $sum
$secondNum substract from $firstNum is $sub
Multiplication of $firstNum and $secondNum is $mul
$firstNum divided by $secondNum dividend is $dividend
$firstNum divided by $secondNum gives a remainder of $remainder
$firstNum raised to the power of $secondNum is $power
EOF
