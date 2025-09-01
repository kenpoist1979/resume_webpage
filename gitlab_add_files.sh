#!/bin/bash

git status
sleep(5)

git branch
sleep(3)

echo "Add file then commit:"
read -p "Add file:" file
read -p "Add commit:" commit

echo "Here are the data being updated locally...."
echo $file
echo $commit
 
git add $file

git status
sleep(5)

git commit -m $commit
sleep(5)

git status
sleep(5)


