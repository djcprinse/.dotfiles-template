#!/bin/bash

apt_packages=''
apt_packages_optional=''

# -----------------------------------------------
# Programming Languages, Frameworks and CLI tools
# -----------------------------------------------

echo 'Installing packages'
sudo apt-get update && apt-get install -y ${apt_packages} ${apt_packages_optional}
