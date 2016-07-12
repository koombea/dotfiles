# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="gallois"

# Note: zsh-syntax-highlighting needs to be the last element of the array
plugins=(git ruby rails autojump history-substring-search zsh-syntax-highlighting)

source $HOME/.aliases
source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='vim'

zrcl="$HOME/.zshrc.local"
[[ ! -a $zrcl ]] || source $zrcl

alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
