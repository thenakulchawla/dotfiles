#!/bin/bash

# Copy dotfiles from home directory to dotfiles repo

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
HOME_DIR="$HOME"

echo "Copying dotfiles from $HOME_DIR to $DOTFILES_DIR..."

cp "$HOME_DIR/.bash_aliases" "$DOTFILES_DIR/bash_aliases"
cp "$HOME_DIR/.bash_profile" "$DOTFILES_DIR/bash_profile"
cp "$HOME_DIR/.bashrc" "$DOTFILES_DIR/bashrc"
cp "$HOME_DIR/.gitconfig" "$DOTFILES_DIR/gitconfig"
cp "$HOME_DIR/.tmux.conf" "$DOTFILES_DIR/tmux.conf"
cp "$HOME_DIR/.vimrc" "$DOTFILES_DIR/vimrc"
cp "$HOME_DIR/.xvimrc" "$DOTFILES_DIR/xvimrc"
cp "$HOME_DIR/.zshrc" "$DOTFILES_DIR/zshrc"
cp "$HOME_DIR/.zpreztorc" "$DOTFILES_DIR/zpreztorc"

echo "Done copying dotfiles from home directory."