#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

echo
echo '#######################'
echo '### macOS bootstrap ###'
echo '#######################'

"${script_dir}/generic/ssh.sh"
"${script_dir}/generic/git.sh"

read -r -p 'Do you want to install development tools? (y/n) [y]? ' CONT
CONT=${CONT:-'y'}
if [[ "${CONT}" = 'y' ]]; then
  "${script_dir}/macos/development-tools.sh"
fi

read -r -p 'Do you want to install applications? (y/n) [y]? ' CONT
CONT=${CONT:-'y'}
if [[ "${CONT}" = 'y' ]]; then
  "${script_dir}/macos/applications.sh"
fi

echo '#######################'
echo 'Ready setting up macOS!'
