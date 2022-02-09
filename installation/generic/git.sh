#!/bin/bash

# ---------------------------------------------
# Configure .gitconfig
# ---------------------------------------------

echo "Add .gitconfig [include] option to $HOME/.gitconfig"
echo '[include]' >> $HOME/.gitconfig
echo 'path = ~/.dotfiles-template/git/.gitconfig' >> $HOME/.gitconfig
echo >> $HOME/.gitconfig
