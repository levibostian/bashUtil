#!/bin/bash

branch_name="$1"
delete="$2"

git checkout master

git merge "$branch_name"

if [ ! -z "$delete" ] && [ "$delete" == "-d" ]; then
    git branch -d "$branch_name"
fi
