#!/bin/bash

# Compile and install Android app to device. Launch it after build complete. 
# $> androidbuildlaunch com.foo.bar NameOfActivity

./gradlew installDevelopmentDebug

# adb shell am start -n $1/$1.$2 # didn't get this to work because my activities are located in package.

if [[ "$OSTYPE" == "darwin"* ]]; then
	open -a Android\ Studio
fi


