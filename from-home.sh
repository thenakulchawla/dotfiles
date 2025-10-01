#!/bin/bash

# Copy dotfiles from home directory to dotfiles repo

HOME_DIR="$HOME"
DOTFILES_DIR="$HOME/dotfiles"

echo "Copying dotfiles from $HOME_DIR to $DOTFILES_DIR..."

cp "$HOME_DIR/.bash_aliases" "$DOTFILES_DIR/bash_aliases"
cp "$HOME_DIR/.bash_profile" "$DOTFILES_DIR/bash_profile"
cp "$HOME_DIR/.bashrc" "$DOTFILES_DIR/bashrc"
cp "$HOME_DIR/.gitconfig" "$DOTFILES_DIR/gitconfig"
cp "$HOME_DIR/.tmux.conf" "$DOTFILES_DIR/tmux.conf"
cp "$HOME_DIR/.vimrc" "$DOTFILES_DIR/vimrc"
cp "$HOME_DIR/.zshrc" "$DOTFILES_DIR/zshrc"
cp "$HOME_DIR/.zpreztorc" "$DOTFILES_DIR/zpreztorc"

cp "$HOME_DIR/.emacs.d/init.el" "$DOTFILES_DIR/emacs.d/init.el"
cp "$HOME_DIR/.emacs.d/lisp/"* "$DOTFILES_DIR/emacs.d/lisp/*"


echo "Done copying dotfiles from home directory."
