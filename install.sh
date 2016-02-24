#!/bin/bash

install () {
	if [ "$1" = android ]
	then
		chosen="Android"
	elif [ "$1" = ios ]
	then
		chosen="iOS"
	fi

	echo Installing for $chosen ...
	
	# Installation stage
	cordova create qucit com.example.qucit Transport Track
	rm -r qucit/www/
	mv qucit/* .
	rm -r qucit/
	echo Adding platform...
    	cordova platform add $1
    	# Build stage
    	cordova build
}

echo --------------------------------------------------------
echo Transport Track - A multi-platform application for ...
echo --------------------------------------------------------
echo Transport Track is currently available for Android and iOS
echo ""
echo Please choose 1,2 or 3 then hit ENTER:

options=("Android" "iOS")
select platform in "${options[@]}"
do
	case $platform in
		"Android" ) 
			install android
			break
			;;
		"iOS" )
			install ios
			break
			;;
		* ) echo "Invalid option";;
	esac
done

echo Installation done
echo Please see README for more info

exit 0
