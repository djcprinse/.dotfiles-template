#!/bin/bash

# ---------------------------------------------
# Configure SSH configuration
# ---------------------------------------------

read -r -p 'Do you want to generate a ssh key for your template account? (y/n) [y]? ' CONT
CONT=${CONT:-'y'}
if [[ "${CONT}" == 'y' ]]; then
  if [ ! -d "${HOME}/.ssh/template/" ]; then
    echo 'Create template ssh key directory'
    mkdir -p "${HOME}/.ssh/template/"
  fi
  ssh-keygen -t ed25519 -a 100 -f ~/.ssh/template/id_ed25519 -C ""
fi

echo 'Symlink ssh configuration'
if [ -f "${HOME}/.ssh/config.d/template" ]; then
  rm "${HOME}/.ssh/config.d/template"
fi
ln -s "${HOME}/.dotfiles-template/ssh/config" "${HOME}/.ssh/config.d/template"
chmod 600 "${HOME}/.ssh/config.d/template"
