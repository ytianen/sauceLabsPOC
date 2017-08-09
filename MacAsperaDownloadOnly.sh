#!/bin/bash
# sudo hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg
# sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /
# sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/

(*tell application "Aspera Connect"
	activate
	tell application "System Events"
		tell process "Aspera Connect"
			repeat until exists button "Allow" of window 1
				delay 1
			end repeat
			delay 1
			click checkbox of window 1
			delay 1
			click button "Allow" of window 1
		end tell
	end tell
end tell*)

tell application "Aspera Connect"
	activate
	tell application "System Events"
		tell process "Aspera Connect"
			repeat until exists button "Allow" of window 1
				delay 1
			end repeat
			delay 3
			keystroke return
		end tell
	end tell
end tell

