#! /bin/bash

cd ~/Desktop

curl -O https://raw.githubusercontent.com/jianfengs/sauceLabsPOC/master/AsperaConnectInstaller-3.6.1.111259.dmg

hdiutil attach AsperaConnectInstaller-3.6.1.111259.dmg

cd /Volumes/Aspera\ Connect\ Installer/

sudo installer -pkg AsperaConnectInstaller.pkg -target "/"

hdiutil detach /Volumes/Aspera\ Connect\ Installer/
