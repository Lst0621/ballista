#!/bin/bash
echo "this machine does not have lolcat"
git branch
echo ""
git status
echo ""
echo "Please enter commit log"
read log 
echo ""
echo $log 

echo "Sure to add and commit" 
read confirm

git add --all
echo ""
git commit -m "$log" 
