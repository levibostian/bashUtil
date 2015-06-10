#!/bin/bash

# mv dir/* newDir/ <-- this command does not include hidden files inside dir.
# This script allows you to move all files including hidden. 

SOURCE="$1"
DEST="$2"

shopt -s dotglob nullglob # makes it so * includes hidden files.

mv "$SOURCE" "$DEST"

shopt -u dotglob nullglob # put back to way it was. 
