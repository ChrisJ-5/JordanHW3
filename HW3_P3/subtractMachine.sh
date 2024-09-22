# Homework 3
# Problem 3
# subtractMachine.sh - This script takes 2 command line arguments and performs
# the following:
# - Subtract the smaller argument from the larger argument and print the
# difference to standard output. The numnbers cannot be equal.
# - Counts down the difference to 1 while printing each count to stdout.
# Example invocation: debian@beaglebone:~$ ./subtractMachine.sh 1 18
#_______________________________________________________________________________
#!/bin/bash

num1=$1
num2=$2

# Determine the larger and smaller numbers
if [ $num1 -gt $num2 ]; then
  larger=$num1
  smaller=$num2
elif [ $num2 -gt $num1 ]; then
  larger=$num2
  smaller=$num1
else
  echo "Arguments must be different numbers"
  exit 1
fi

# Calculate the difference
  difference=$((larger - smaller))
  echo "The difference is: $difference"

# Countdown from the difference to 1
  echo "Counting down from $difference:"
  for ((i=difference; i>=1; i--)); do
  echo $i
  done
