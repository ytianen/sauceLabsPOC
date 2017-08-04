#!/bin/bash
# sudo hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg
# sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /
# sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/


        tell application "Aspera Connect"
	        activate
	        tell application "System Events"
	            tell process "Aspera Connect"
#	                tell checkbox 1 to if value is 0 then click
			            repeat until exists of button 1 of window 1
			            delay 1
			            end repeat
			            delay 2
			            keystroke return
#			            click button "Allow"
#                    end tell
                end tell
            end tell
        end tell