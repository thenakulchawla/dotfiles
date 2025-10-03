#!/bin/bash

# Create symlinks from home directory to dotfiles repo
# Usage: ./symlink.sh

# File mappings: home_name -> repo_name (parallel arrays)
FILES_HOME=(
    ".bash_aliases"
    ".bash_profile"
    ".bashrc"
    ".gitconfig"
    ".tmux.conf"
    ".vimrc"
    ".zpreztorc"
    ".emacs.d"
)

FILES_REPO=(
    "bash_aliases"
    "bash_profile"
    "bashrc"
    "gitconfig"
    "tmux.conf"
    "vimrc"
    "zpreztorc"
    "emacs.d"
)

DOTFILES_DIR="$HOME/dotfiles"

echo "Creating symlinks from $HOME to $DOTFILES_DIR..."

for i in "${!FILES_HOME[@]}"; do
    home_path="$HOME/${FILES_HOME[$i]}"
    repo_path="$DOTFILES_DIR/${FILES_REPO[$i]}"
    
    # Create symlink
    echo "Linking $home_path -> $repo_path"
    ln -sf "$repo_path" "$home_path"
done

echo "Done creating symlinks!"
echo ""
echo "Note: .zshrc is managed by prezto and should point to ~/.zprezto/runcoms/zshrc"
echo "Run this to restore prezto's .zshrc symlink:"
echo "  ln -sf ~/.zprezto/runcoms/zshrc ~/.zshrc"
