#!/bin/bash
sudo hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg

sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /

sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/

#MyValue=$1
osascript <<EOD
#/usr/bin/osascript<<EOF
    on run
        tell application "Aspera Connect"
	        activate
#	        set myFile to do shell script "echo '$MyValue'"
            set myFile to "/Users/selenium/Desktop"
	        tell application "System Events"
	            tell process "Aspera Connect"
	                repeat until exists window 1
	                delay 1
	                end repeat
#	                    tell window 1
#		                    tell application "System Events"
			                    keystroke "g" using {command down, shift down}
			                    delay 2
			                    keystroke myFile
			                    delay 1
			                    keystroke return
			                    delay 2
			                    keystroke return
			                    click button "Allow"
#		                    end tell
	            end tell
            end tell
        end tell
    end run
#EOF
EOD