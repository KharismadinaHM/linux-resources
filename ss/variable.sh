#! /bin/bash

# Variable
# There are two kinds of variable in shell
# 1) System variable 2) user defiend variable

# System variable 
# system variable name are all Uppercase letter ex $BASH (by convention)


echo Our shell name is $BASH
echo Our shell version is $BASH_VERSION
echo Our home directory is $HOME
echo Current working directory $PWD
echo Our operating system name is $OSTYPE
echo All path variable $PATH
echo Our shell is $SHELL

# user_defiend_variable are not uppercase all characters (by convention)

# no space before and after = sign
name=Nahid

# variable name not start with any number
value=10 

echo The name is $name
echo The value is $value