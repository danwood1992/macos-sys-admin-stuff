#!/bin/bash

loggedInUser=$( scutil <<< "show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }' )

hdiutil attach /opt/docker/Docker.dmg

/Volumes/Docker/Docker.app/Contents/MacOS/install --accept-license --user="$loggedInUser"

hdiutil detach /Volumes/Docker