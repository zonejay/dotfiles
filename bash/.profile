#!/bin/bash

BASH_SRC_PATH=~/.dotfiles/bash

. "$BASH_SRC_PATH"/.prompt
. "$BASH_SRC_PATH"/.aliases
. "$BASH_SRC_PATH"/.functions

# System Specific
if [[ ! "$SSH_TTY" && "$OSTYPE" =~ ^darwin ]]; then
	. "$BASH_SRC_PATH"/.osx
else
	. "$BASH_SRC_PATH"/.ubuntu
fi

# rerun bootstrap script
alias dot="bash $BASH_SRC_PATH/bootstrap.sh"
# reload
alias spr="source ~/.profile; echo '~/.profile reloaded.'"