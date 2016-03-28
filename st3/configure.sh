#!/usr/bin/env sh

OS=$(uname)

if [ "$OS" == "Darwin" ]; then

	if [ ! -d "/Applications/Sublime Text.app" ]; then
		echo "ST3 Not installed. Please install it from http://www.sublimetext.com/3"
		exit -1 
	fi
	STDIR="$HOME/Library/Application Support/Sublime Text 3"
	if [ -d "$STDIR/Packages/User" ]; then
		echo "Backing up ST3 User folder"
		mv "$STDIR/Packages/User" "$STDIR/Packages/User.$RANDOM"  
	fi

	if [ -d "$STDIR/Installed Packages" ]; then
		echo "Backing up ST3 Installed Packages"
		mv "$STDIR/Installed Packages"  "$STDIR/Installed Packages.$RANDOM" 
	fi

	ln -s "$(pwd)/OSX/User/" "$STDIR/Packages/" 
	ln -s "$(pwd)/OSX/Installed Packages/" "$STDIR/"

	if [ ! -f /usr/local/bin/subl ]; then
		sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
	fi

elif [ "$OS" == "Linux" ]; then
	echo "TODO: Linux configuration"
else
	echo "Un-supported OS: $OS"
	exit
fi
