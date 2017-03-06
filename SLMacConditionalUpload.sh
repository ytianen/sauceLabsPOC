#!/bin/bash
#hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg

#sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /

#sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/

#if [ "$#" = "4" ]
#then
    #curl -o /tmp/$1 https://raw.githubusercontent.com/jianfengs/sauceLabsPOC/master/$1
#    cd /tmp

    curl -o /tmp/$1 https://bitbucket.org/ztsjf/saucelabs_poc/raw/8f3b9133c1570cae2194e3b656194bfc5bcda929/$1 -o /tmp/$2 https://raw.githubusercontent.com/jianfengs/sauceLabsPOC/master/$2
#    while [ ! -f /tmp/$1 ]
#        do
#        sleep 2
#    done
#    cd $HOME
    cd /Users/chef
    tar -xvf /tmp/Connect.tar
    Applications/Aspera\ Connect.app/Contents/MacOS/asperaconnect --register-protocol-user
#    open Applications/Aspera\ Connect.app
    /usr/bin/osascript<<EOF
    on run
        delay 60
        tell application "Aspera Connect"
	        activate
	        set myFile to do shell script "echo '/tmp/$2'"
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
                end tell
            end tell
        end tell
    end run
EOF
#fi
#if [ "$#" = "5" ]
#then
#    curl -o /tmp/$1 https://raw.githubusercontent.com/jianfengs/sauceLabsPOC/master/$1 -o /tmp/$2 https://raw.githubusercontent.com/jianfengs/sauceLabsPOC/master/$2
#    /usr/bin/osascript<<EOF
#    on run
#        tell application "Aspera Connect"
#	        activate
#	        set myFile to do shell script "echo '/tmp/$1'"
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
#	    set myFile to do shell script "echo '/tmp/$2'"
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



