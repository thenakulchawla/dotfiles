#!/bin/bash
############################
# This script copies files to home directory
############################

files="vimrc xvimrc bashrc bash_profile zpreztorc zshrc tmux.conf gitconfig
bash_aliases"

for file in $files; do
    echo "Copying file to home"
    yes | cp ~/dotfiles/$file ~/.$file
done