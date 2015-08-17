#!/bin/bash

# when you have a git repo that you add a bunch of different files to and then
# later in the future you decide to add a .gitignore that now ignores files
# that were previously tracked by git. Instead of `git rm --cached <file>`
# every single file individually, just run this script to go through them all. 

git rm -r --cached .
git add .
