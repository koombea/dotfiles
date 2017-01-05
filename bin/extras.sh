#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
  if brew ls -1 | grep -q "autojump"; then
    echo "Autojump already installed."
  else
    brew install autojump
  fi
  if brew ls -1 | grep -q "ag"; then
    echo "Ag already installed."
  else
    brew install ag
  fi
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  if dpkg -s autojump | grep -q "ok installed"; then
    echo "Autojump already installed."
  else
    sudo apt-get -y install autojump
  fi
  if dpkg -s silversearchear-ag | grep -q "ok installed"; then
    echo "Silver Searcher already installed."
  else
    sudo apt-get -y install silversearcher-ag
  fi
fi
