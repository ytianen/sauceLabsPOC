#!/bin/bash

MyValue=$1
#osascript <<EOD
/usr/bin/osascript<<EOF
    on run
    	repeat until application "GridLauncherV3" is running
    		delay 5
    	end repeat
     	tell application "Safari"
		activate
        tell application "System Events"
		tell process "Safari"
		repeat until exists of button "Trust" of sheet 1 of window 1
			delay 1
		end repeat
    		click button "Trust" of sheet o of window 1
	end tell
	end tell
	end tell
        tell application "Aspera Connect"
	        activate
	        set myFile to do shell script "echo '$MyValue'"
	        tell application "System Events"
	            tell process "Aspera Connect"
	                repeat until exists window 1
	                delay 1
	                end repeat
			        keystroke "g" using {command down, shift down}
			        delay 2
			        keystroke myFile
			        delay 1
			        keystroke return
			        delay 2
			        keystroke return
			     end tell
            end tell
        end tell
        delay 10
        tell application "Aspera Connect"
	        activate
	        tell application "System Events"
	            tell process "Aspera Connect"
			        repeat until exists of button 1 of window 1
			        delay 1
			        end repeat
			        delay 2
			        keystroke return
#			        click button "Allow"
                end tell
            end tell
        end tell
    end run
EOF
#EOD
