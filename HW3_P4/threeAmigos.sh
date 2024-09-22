# Homework 3
# Problem 4
# threeAmigos.sh - This scropt takes 4 commmand line arguments and performs the
# following:
# - Sums the first 3 numbers
# - Executes subtractMachine.sh where the first argument is the sum calculated
# in item 1 and the second argument is the fourth command line argument supplied
# for threeAmigos.sh
# Example invocation: debian@beaglebone:~$ ./threeAmigos.sh 5 5 5 4
#_______________________________________________________________________________
#!/bin/bash

# Calculate the sum
sum=$(($1+$2+$3))
echo "Sum = $sum"

# Run subtractMachine.sh using the sum as the first argument and $4 as the
# second
./subtractMachine.sh $sum $4

