#!/bin/bash
# sudo hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg
# sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /
# sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/


tell application "System Events" to tell process "Aspera Connect"
    repeat until exists of button 1 of window 1
        delay 1
    end repeat
        delay 2
    click checkbox "Use my choice" of window 1
        delay 2
    keystroke return
end tell
