#!/bin/bash

DOTFILES_PATH=~/dotfiles
BASH_SRC_PATH=$DOTFILES_PATH/bash

. "$BASH_SRC_PATH"/.aliases
. "$BASH_SRC_PATH"/.functions
# edit this folder
alias dot="cd ~/.dotfiles"
# reload
alias rl="source ~/.zshrc; echo '~/.zshrc reloaded.'"