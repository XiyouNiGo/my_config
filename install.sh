#!/bin/bash
set -x
set -e

# gdb
cp .gdbinit ~/.gdbinit
# git
cp .gitignore ~/.gitignore
# vim
cp .vimrc ~/.vimrc
cp .vimrc.custom.config ~/.vimrc.custom.config
cp .vimrc.custom.plugins ~/.vimrc.custom.plugins
# fish
cp config.fish ~/.config/fish/config.fish
cp fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

# prepare-code
cp snippet/* ~/.vim/plugged/prepare-code/snippet/*
