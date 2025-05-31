#!/bin/bash
############################
# This script copies files to home directory
############################

files="vimrc xvimrc bashrc bash_profile zpreztorc zshrc tmux.conf gitconfig
bash_aliases xmodmap ideavimrc"

for file in $files; do
    echo "Copying file to home"
    yes | cp ~/$file ~/.$file
done