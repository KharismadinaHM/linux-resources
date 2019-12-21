#! /bin/bash

# To take user input from terminal you can use 'read' command

echo Enter your name: 
read name
echo Your name is $name

# take multiple input
echo Enter 3 name:
read name1 name2 name3
echo $name1, $name2, $name3

# take input in same line
read -p "Enter name " name
echo $name

# read password 
read -sp "Password: " passwd
echo $passwd

# take an array of input
read -a name
echo "names : ${name[0]}, ${name[1]}"