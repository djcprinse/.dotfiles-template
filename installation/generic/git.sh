#!/bin/bash

# ---------------------------------------------
# Configure .gitconfig
# ---------------------------------------------

if ! grep -q 'dotfiles-template' "${HOME}/.gitconfig"; then
  echo "Add .gitconfig [include] option to ${HOME}/.gitconfig"
  {
    echo '[include]'
    echo 'path = ~/.dotfiles-template/git/.gitconfig'
    echo
  } >> "${HOME}/.gitconfig"
fi
