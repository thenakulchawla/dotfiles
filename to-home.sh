#!/bin/bash

# Copy dotfiles from dotfiles repo to home directory

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
HOME_DIR="$HOME"

echo "Copying dotfiles from $DOTFILES_DIR to $HOME_DIR..."

cp "$DOTFILES_DIR/bash_aliases" "$HOME_DIR/.bash_aliases"
cp "$DOTFILES_DIR/bash_profile" "$HOME_DIR/.bash_profile"
cp "$DOTFILES_DIR/bashrc" "$HOME_DIR/.bashrc"
cp "$DOTFILES_DIR/gitconfig" "$HOME_DIR/.gitconfig"
cp "$DOTFILES_DIR/tmux.conf" "$HOME_DIR/.tmux.conf"
cp "$DOTFILES_DIR/vimrc" "$HOME_DIR/.vimrc"
cp "$DOTFILES_DIR/zshrc" "$HOME_DIR/.zshrc"
cp "$DOTFILES_DIR/xvimrc" "$HOME_DIR/.xvimrc"
cp "$DOTFILES_DIR/zpreztorc" "$HOME_DIR/.zpreztorc"
cp "$DOTFILES_DIR/emacs.d/init.el" "$DOTFILES/.emacs.d/init.el"
cp "$DOTFILES_DIR/emacs.d/lisp/"* "$DOTFILES/.emacs.d/lisp/"

echo "Done copying dotfiles to home directory."
