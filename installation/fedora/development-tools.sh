#!/bin/bash

dnf_packages=''
dnf_packages_optional=''

# -----------------------------------------------
# Programming Languages, Frameworks and CLI tools
# -----------------------------------------------

echo 'Installing packages'
sudo dnf install -y ${dnf_packages} ${dnf_packages_optional}
