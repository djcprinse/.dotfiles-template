#!/bin/bash

brew_packages='lorem'
brew_packages_optional=''

# -----------------------------------------------
# Programming Languages, Frameworks and CLI tools
# -----------------------------------------------

echo 'Installing packages'
brew install "${brew_packages}" "${brew_packages_optional}"
