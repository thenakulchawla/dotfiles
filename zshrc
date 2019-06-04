if [ "$COLORTERM" = "gnome-terminal" -a "$TERM" "=~" "xterm.*" ]; then
    export TERM="xterm-256color"
fi
export HISTSIZE=20000

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [ -f ~/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -f ~/.bash_profile ]; then
    source $HOME/.bash_profile
fi

if [ -f ~/.zshrc_local ]; then
    source $HOME/.zshrc_local
fi


# don't record the commands starting with space to history
setopt histignorespace

# overwrite file during redirection(>)
# create file during append-redirection(>>)
setopt clobber

bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

# ctrl-y inserts the content of the kill buffer at the current position
bindkey '^y' yank

# alt-. inserts last arg from previous commands
bindkey '\e.' insert-last-word

bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward
bindkey -M vicmd '\e.' insert-last-word

export KEYTIMEOUT=1
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
