#!/bin/bash

## FIRST: Create a "burplist.txt" file in the same folder as this script & add the passwords from the lab
## This script will create a "burplistpeter.txt" file with passwords, & a "username.txt" file with usernames

## This line creates the password list by taking burplist.txt and inserting "peter" every other line
awk ' {print;} NR % 1 == 0 { print "peter"; }'  burplist.txt > burplistpeter.txt

## These lines create the username list by adding "carlos" and "wiener" 100 times to username.txt
function addName { echo "carlos" >> username.txt; echo "wiener" >> username.txt; }
for value in {1..100}
do
addName
done
