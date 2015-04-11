#!/bin/bash

# NOTE: Run script from the actual Ghost blog root path.
USEAGE="$0 <download-location>" #download location from https://ghost.org/download/
DOWNLOAD="$1"
TEMP="/tmp/ghostupgrade"

echo "Did you include download location as an argument? https://ghost.org/download/ [ENTER]"
read

mkdir $TEMP
wget -P $TEMP "$DOWNLOAD" 
unzip $TEMP/*.zip -d $TEMP

rm index.js
rm package.json
cp $TEMP/index.js .
cp $TEMP/package.json .

rm -rf core
cp -r $TEMP/core .

sudo rm -rf node_modules
sudo npm install --production

echo "Now, restart node server. Will need to killall npm and killall node to get working again."



