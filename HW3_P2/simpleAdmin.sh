# Homework 3
# Problem 2
# simpleAdmin.sh - This scropt takes 4 command line arguments.
# This script performs the following:
# - Creates a directory in working directory using the first argument as the name
# - Creates a directory insied the directory created in item 1 using the second argument as the name
# - Creates a text file using the 3rd argument as the name, writes "Hello World!"
#   to it and saves it in the directory created in item 2
# - Creates a soft link from the working directory to the sub-directory created
#   in item 2 and uses the fourth argument as name of the link.
# - Displays messages to the user indicating what actions are being taken.
# Example Invocation: debian@beaglebone:~$ ./simpleAdmin.sh 1 2 3 4
#_________________________________________________________________________________________________________
#!/bin/bash

echo "Creating directory '$1'"
mkdir $1

echo "Creating directory '$2' within '$1'"
mkdir $1/$2

echo "Creating textfile '$3' holding "Hello World!""
echo "Hello World!" > $1/$2/$3

echo "Creating soft link, '$4'  from working directory to $2"
ln -s /home/debian/$1/$2 $4
