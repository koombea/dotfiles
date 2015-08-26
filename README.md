# Dotfiles
## Koombea dotfiles

Dotfiles is a collection of configuration files used at Koombea to customise different development tools. This project's goal is to standardise a part of our work environment to make working more pleasant.

## What are dotfiles?
Dotfiles are basically plain text files that start with a '.' and are use to set preferences for things like Git and Vim. To see your current dotfiles, open a terminal and in your home folder run this:

```
$ ls -a
```

## Install

First clone the repo:

```
$ git clone git@github.com:koombea/dotfiles.git
```

Then cd into the dotfiles directory and run this script:

```
$ cd dotfiles
$ bin/install
```

This will symlink all dotfiles into your home directory.

This script will only install files that do not already exist in your $HOME directory. if you have, e.g. your own .vimrc file, the script will rename it as .vimrc.old so you can get what you need from there and move it into ~/.vimrc.local. Do not worry! Dotfiles will source it for you.

## Update

To keep dotfiles up to date, just go into dotfiles home directory and run:

```
$ git pull --rebase
$ bin/install
```

## Uninstall

Cd into dotfiles home directory and run this script:

```
$ bin/uninstall
```

## Contribute

If you are interested in contributing fixing a bug or suggesting something new, do not hesitate in forking the project and submitting a pull request.
