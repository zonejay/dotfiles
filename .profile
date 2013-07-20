#!/bin/bash

DOTFILES_PATH=~/dotfiles

. "$DOTFILES_PATH"/.prompt
. "$DOTFILES_PATH"/.aliases

# System Specific
if [[ ! "$SSH_TTY" && "$OSTYPE" =~ ^darwin ]]; then
	. "$DOTFILES_PATH"/.osx
else
	. "$DOTFILES_PATH"/.ubuntu
fi

# rerun bootstrap script
alias dot="bash $DOTFILES_PATH/bootstrap.sh"
# reload
alias spr="source ~/.profile; echo '~/.profile reloaded.'"