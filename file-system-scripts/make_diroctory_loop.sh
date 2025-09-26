#!/bin/bash

# Create the first directory
mkdir dir1
#this comand is to give an output in the terminal to know that the previous command had been excuted
echo "Created dir1" 

# Create the second directory inside the first one
mkdir dir1/dir2
#this comand is to give an output in the terminal to know that the previous command had been excuted
echo "Created dir2 inside dir1" 

# Create a symbolic link in dir2 that points back to dir1
ln -s ../../dir1 dir1/dir2/dir1
#this comand is to give an output in the terminal to know that the previous command had been excuted
echo "Created symbolic link in dir2"
