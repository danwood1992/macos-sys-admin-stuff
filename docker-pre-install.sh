#!/bin/bash

ls -al /Applications/Docker.app
ls -l /usr/local/bin

# remove stagnant docker files
sudo rm -rf ~/Library/Group\ Containers/group.com.docker
# sudo rm -rf ~/Library/Containers/com.docker.docker # not permitted?
sudo rm -rf ~/.docker

exit 0