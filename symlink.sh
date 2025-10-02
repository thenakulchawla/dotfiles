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
    
    # Backup existing file/directory if it exists and is not a symlink
    if [ -e "$home_path" ] && [ ! -L "$home_path" ]; then
        backup_path="${home_path}.backup.$(date +%Y%m%d_%H%M%S)"
        echo "Backing up $home_path to $backup_path"
        mv "$home_path" "$backup_path"
    fi
    
    # Remove existing symlink if it exists
    if [ -L "$home_path" ]; then
        rm "$home_path"
    fi
    
    # Create parent directory if needed
    parent_dir=$(dirname "$home_path")
    mkdir -p "$parent_dir"
    
    # Create symlink
    echo "Linking $home_path -> $repo_path"
    ln -sf "$repo_path" "$home_path"
done

echo "Done creating symlinks!"
echo ""
echo "Note: .zshrc is managed by prezto and should point to ~/.zprezto/runcoms/zshrc"
echo "Run this to restore prezto's .zshrc symlink:"
echo "  ln -sf ~/.zprezto/runcoms/zshrc ~/.zshrc"
