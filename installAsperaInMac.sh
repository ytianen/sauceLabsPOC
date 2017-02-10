#!/bin/bash
hdiutil attach http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg

cd /

open /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg

osascript <<EOD
    on run
#        tell application "Installer" to activate
            tell application "System Events"
                tell process "Installer"
                repeat until exists button "Continue" of window 1
                end repeat
	            click button "Continue" of window 1
	            delay 1
	            repeat until exists button "Continue" of window 1
	            end repeat
	            click button "Continue" of window 1
	            repeat until exists button "Agree" of sheet 1 of window 1
	            end repeat
	            click button "Agree" of sheet 1 of window 1
	            repeat until exists button "Install" of window 1
	            end repeat
	            click button "Install" of window 1
	            repeat until exists button "Close" of window 1
	            end repeat
#	            delay 30
#	            click button "Close Application to Install" of sheet 1 of window 1
#	            delay 2
	            click button "Close" of window 1
                end tell
            end tell
#        end tell
    end run
EOD
