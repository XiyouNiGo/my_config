#!/bin/bash
set -x
set -e

# gdb
cp ~/.gdbinit .
# git
cp ~/.gitignore .
# vim
cp ~/.vimrc .
cp ~/.vimrc.custom.config .
cp ~/.vimrc.custom.plugins .
# fish
cp ~/.config/fish/config.fish .

# push to hub
git add -A
git commit -m "update config files"
git push origin master
