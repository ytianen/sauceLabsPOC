#!/bin/bash
hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg

#sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /

#sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/

#curl -o /tmp/mov_DO_NOT_DELETE_.mov https://raw.githubusercontent.com/jianfengs/sauceLabsPOC/master/mov_DO_NOT_DELETE_.mov

curl -o /tmp/$1 https://raw.githubusercontent.com/jianfengs/sauceLabsPOC/master/$1

#MyValue1=$1
#MyValue2=$2
#
#if ["$#" = "4"]
#then
#    curl -o /tmp/${MyValue1} https://raw.githubusercontent.com/jianfengs/sauceLabsPOC/master/${MyValue1}
#    /usr/bin/osascript<<EOF
#    on run
#        tell application "Aspera Connect"
#	        activate
#	        set myFile to do shell script "echo '$MyValue1'"
#	        tell application "System Events"
#	            tell process "Aspera Connect"
#	                repeat until exists window 1
#	                delay 1
#	                end repeat
#			        keystroke "g" using {command down, shift down}
#			        delay 2
#			        keystroke myFile
#			        delay 1
#			        keystroke return
#			        delay 2
#			        keystroke return
#			     end tell
#            end tell
#        end tell
#        delay 10
#        tell application "Aspera Connect"
#	        activate
#	        tell application "System Events"
#	            tell process "Aspera Connect"
#			        repeat until exists of button 1 of window 1
#			        delay 1
#			        end repeat
#			        delay 2
#			        keystroke return
#                end tell
#            end tell
#        end tell
#    end run
#EOF
#fi
#if ["$#" = "5"]
#then
#    curl -o /tmp/${MyValue1} https://raw.githubusercontent.com/jianfengs/sauceLabsPOC/master/${MyValue1} -o /tmp/${MyValue2} https://raw.githubusercontent.com/jianfengs/sauceLabsPOC/master/${MyValue2}
#    /usr/bin/osascript<<EOF
#    on run
#        tell application "Aspera Connect"
#	        activate
#	        set myFile to do shell script "echo '$MyValue1'"
#	        tell application "System Events"
#	            tell process "Aspera Connect"
#	                repeat until exists window 1
#	                delay 1
#	                end repeat
#			        keystroke "g" using {command down, shift down}
#			        delay 2
#			        keystroke myFile
#			        delay 1
#			        keystroke return
#			        delay 2
#			        keystroke return
#			     end tell
#            end tell
#        end tell
#        delay 2
#        tell application "Aspera Connect"
#	    activate
#	    set myFile to do shell script "echo '$MyValue2'"
#	        tell application "System Events"
#	            tell process "Aspera Connect"
#	                repeat until exists window 1
#	                delay 1
#	                end repeat
#			        keystroke "g" using {command down, shift down}
#			        delay 2
#			        keystroke myFile
#			        delay 1
#			        keystroke return
#			        delay 2
#			        keystroke return
#			     end tell
#            end tell
#        end tell
#        delay 10
#        tell application "Aspera Connect"
#	        activate
#	        tell application "System Events"
#	            tell process "Aspera Connect"
#			        repeat until exists of button 1 of window 1
#			        delay 1
#			        end repeat
#			        delay 2
#			        keystroke return
#			        delay 2
#			        keystroke return
##			        click button "Allow"
#                end tell
#            end tell
#        end tell
#    end run
#EOF
#fi
#
#
