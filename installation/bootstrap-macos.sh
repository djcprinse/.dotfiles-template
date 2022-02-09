#!/bin/bash

echo
echo '#######################'
echo '### macOS bootstrap ###'
echo '#######################'

./generic/ssh.sh
./generic/git.sh
./macos/development-tools.sh
./macos/applications.sh

echo '#######################'
echo 'Ready setting up macOS!'
