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

### Extras

This script will install extra tools required for some plugins functionality. It's not mandatory to install the extras, but it is highly recommended. The script will work on Mac or Linux (Ubuntu):

```
bin/extras.sh
```

It will install:

- Silver Searcher (Vim)
- Autojump (Oh-My-Zsh)

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

## Contributing

1. Fork it ( https://github.com/koombea/dotfiles/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Copyright 2015 Koombea. http://koombea.com
