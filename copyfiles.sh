#!/bin/bash

# Copy dotfiles between home directory and dotfiles repo
# Usage: ./copyfiles.sh [from|to]

# File mappings: home_name -> repo_name (parallel arrays)
FILES_HOME=(
    ".bash_aliases"
    ".bash_profile"
    ".bashrc"
    ".gitconfig"
    ".tmux.conf"
    ".vimrc"
    ".zshrc"
    ".zpreztorc"
    ".emacs.d/init.el"
    ".emacs.d/lisp/theme.el"
    ".emacs.d/lisp/keybindings.el"
)

FILES_REPO=(
    "bash_aliases"
    "bash_profile"
    "bashrc"
    "gitconfig"
    "tmux.conf"
    "vimrc"
    "zshrc"
    "zpreztorc"
    "emacs.d/init.el"
    "emacs.d/lisp/theme.el"
    "emacs.d/lisp/keybindings.el"
)

DOTFILES_DIR="$HOME/dotfiles"
DIRECTION="${1:-}"

if [[ "$DIRECTION" != "from" && "$DIRECTION" != "to" ]]; then
    echo "Usage: $0 [from|to]"
    echo "  from: Copy from home directory to dotfiles repo"
    echo "  to:   Copy from dotfiles repo to home directory"
    exit 1
fi

if [[ "$DIRECTION" == "from" ]]; then
    echo "Copying dotfiles from $HOME to $DOTFILES_DIR..."
    for i in "${!FILES_HOME[@]}"; do
        home_path="${FILES_HOME[$i]}"
        repo_path="${FILES_REPO[$i]}"
        cp "$HOME/$home_path" "$DOTFILES_DIR/$repo_path"
    done
    echo "Done copying dotfiles from home directory."
else
    echo "Copying dotfiles from $DOTFILES_DIR to $HOME..."
    for i in "${!FILES_HOME[@]}"; do
        home_path="${FILES_HOME[$i]}"
        repo_path="${FILES_REPO[$i]}"
        cp "$DOTFILES_DIR/$repo_path" "$HOME/$home_path"
    done
    echo "Done copying dotfiles to home directory."
fi
