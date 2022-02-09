# .dotfiles-template

This repository contains basic files to set up your custom `.dotfiles-template` repository. At the moment it contains an
empty `.gitconfig`, ssh `config` and zsh `.aliases`, `.exports` and `.zshrc`.

This `.dotfiles-template` is an extension to my [`.dotfiles`](https://github.com/djcprinse/.dotfiles) repository. In
here you can add your own configuration. Below you can find a list of currently supported configuration.

* define ssh configuration for your services;
* generate an ssh key
* define `.gitconfig` for your git services;
* define your zsh `.aliases`, `.exports` and `.zshrc` configuration;
* define development-tools and applications to install;

```
❯ tree
.
├── README.md
├── git
│    ├── .gitconfig
│         └── .gitconfig_template 
├── installation
│    ├── bootstrap-macos.sh
│    ├── generic
│    │    ├── git.sh
│    │    └── ssh.sh
│    ├── install.sh
│    └── macos
│        ├── applications.sh
│        └── development-tools.sh
├── ssh
│    └── config
└── zsh
     ├── .aliases
     ├── .exports
     └── .zshrc
```

## ssh

You can add your custom ssh configuration inside the `ssh/config` file. For this template, an example host configuration
has been added. This configuration uses the ssh key generated during installation.

During installation, inside the `installation/generic/ssh.sh` an ssh key can be generated. Feel free to adjust the
`ssh-keygen`command to your own preferences.

The ssh `config` file will be symlinked to the home `~/.ssh/config.d/` directory, and the `/.ssh/config` will include
the `config` files inside that directory.

## git

You can add your custom git configuration inside the `git/.gitconfig` file. The `git/.gitconfig_template` can contain
the configuration for a specific git service. Inside the generic `.gitconfig`, you can include the various git service
files. As an example, the `.gitconfig_template` will be included for this repository.

During installation, inside the `installation/generic/git.sh` the `git/.gitconfig` file will be appended to the global
`~/.gitconfig` file.

## development-tools and applications

Inside the `installation/macos` directory, there are two shell template files `development-tools` and `applications` in
which you can add the installation scripts of your favorite tools and apps.

## Questions

Feel free to create an issue on this repository if you have any questions about it.
