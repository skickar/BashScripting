#!/bin/bash

## Create the password list by taking burplist.txt and inserting "peter" every other line

awk ' {print;} NR % 1 == 0 { print "peter"; }'  burplist.txt > burplistpeter.txt

## Create the username list, adding "carlos" and "wiener" 100 times to username.txt

function addName { echo "carlos" >> username.txt; echo "wiener" >> username.txt; }
for value in {1..100}
do
addName
done
