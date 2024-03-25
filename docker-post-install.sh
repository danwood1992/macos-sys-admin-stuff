#!/bin/bash

# remove stagnant docker files
sudo rm -rf ~/Library/Group\ Containers/group.com.docker
# sudo rm -rf ~/Library/Containers/com.docker.docker # not permitted?
sudo rm -rf ~/.docker

user=$( scutil <<< "show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }' )

/Volumes/Docker/Docker.app/Contents/MacOS/install --accept-license --user="$user"

exit 0