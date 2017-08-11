#!/bin/bash
osascript <<EOD
    tell application "Aspera Connect"
            activate
            tell application "System Events"
                tell process "Aspera Connect"
                    repeat until exists of button 1 of window 1
                    delay 1
                    end repeat
                    log
                    delay 2
                    key code 53
                end tell
                log
            end tell
    end tell
        tell application "Aspera Connect"
                activate
                tell application "System Events"
                    tell process "Aspera Connect"
                        repeat until exists of button 1 of window 1
                        delay 1
                        end repeat
                        log
                        delay 2
                        keystroke return
                        delay 2
                        log
                        keystroke return
                    end tell
                    log
                end tell
        end tell
EOD

