#!/bin/bash
sudo hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.7.0/AsperaConnectInstaller-3.7.0.138427.dmg

sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /

sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/
