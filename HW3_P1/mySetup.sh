# Homework 3 
# Problem 1
# mySetup.sh - This script has no command line arguments and performs the
# following:
  # - Set the frequency of the BBB to 600 MHz.
  # - Display information about the cpu; e.g. cpufreq-info command.
  # - Create a variable named location inside the script and assign it the
  # value: /home/debian
  # - Echo the value of the variable location.
  # - Create a variable named items, which gets the number of items in your
  # current working directory and displays the number
  #
  # - Invocation: debian@beaglebone:~$ mySetup.sh
#___________________________________________________________________________________________________________________________
#!/bin/bash
  
# Set the frequency of the BBB to 600 MHz
sudo cpufreq-set -f 600MHz
  
# Display info about the cpu
cpufreq-info
  
# Create variable called 'location'
location=/home/debian
echo $location
      
# Create variable 'items' to store current number of items
# in current directory and display it
      
items=$(ls | wc -l)
      
echo $items

