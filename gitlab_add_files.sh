#!/bin/bash

git status
sleep 5

git branch
sleep 3

echo "Add file then commit:"
echo "====================="
echo ""
read -p "Add file:" file
read -p "Add commit:" commit

echo "Here are the data being updated locally...."
echo $file
echo $commit
 
git add $file

git status
sleep 5
echo ""
git commit -m "$commit"
sleep 5
echo ""
git status
sleep 5

echo "What's next?:"
echo "1. Push to repo"
echo "2. Merge to main"
echo "3. Exit"

read $choice

case choice in
1 ) git push origin
2 ) git merge origin
3 ) exit
esac


