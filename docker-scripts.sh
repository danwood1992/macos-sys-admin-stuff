#!/bin/bash

#Cheking if docker is installed and Removing Docker
/Applications/Docker.app/Contents/MacOS/uninstall # why doesnt this work

loggedInUser=$( scutil <<< "show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }' )

echo "Logged in user is $loggedInUser "

sudo rm -rf ~/Library/Group\ Containers/group.com.docker
sudo rm -rf ~/Library/Containers/com.docker.docker # not permitted?
sudo rm -rf ~/.docker


hdiutil attach /opt/docker/Docker.dmg
/Volumes/Docker/Docker.app/Contents/MacOS/install --accept-license --user="$loggedInUser"
hdiutil detach /Volumes/Docker

# Interrogate 

ls -al /Applications/Docker.app
ls -l /usr/local/bin

# dirs
 cd /Library/Application\ Support/com.docker.docker/ || exit # install settings

 ls -al