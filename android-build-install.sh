#!/bin/bash

# Compile and install Android app to device. Add as many args as you want to add to the g$
# $> android-build-launch.sh -PminSdk=22 --offline

if ./gradlew installDevelopmentDebug $* ; then 
	if [[ "$OSTYPE" == "darwin"* ]]; then
		osascript -e 'display notification "Built successfully" with title "Success"'
		open -a Android\ Studio
	else 
		echo 'Success.'
	fi
else 
	if [[ "$OSTYPE" == "darwin"* ]]; then	
		osascript -e 'display notification "Build failed." with title "FAILED"'
		open -a Android\ Studio
	else 
		echo 'FAILED.'
	fi
fi


