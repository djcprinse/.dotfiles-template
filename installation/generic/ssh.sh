#!/bin/bash

# ---------------------------------------------
# Configure SSH configuration
# ---------------------------------------------

echo 'Create template ssh key directory'
mkdir $HOME/.ssh/template/
read -p 'Do you want to generate a ssh key for your template account? (y/n) [y]? ' CONT
CONT=${CONT:-'y'}
if [[ $CONT == 'y' ]]; then
  ssh-keygen -t ed25519 -a 100 -f ~/.ssh/template/id_ed25519 -C ""
fi

echo 'Symlink ssh configuration'
rm $HOME/.ssh/config.d/template
ln -s $HOME/.dotfiles-template/ssh/config $HOME/.ssh/config.d/template
