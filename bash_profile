# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Go
export GOPATH=$HOME/go
export GOROOT=/opt/homebrew/Cellar/go/1.16.6

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export KEYTIMEOUT=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

function quit {
    osascript -e 'tell application "Terminal" to quit'
}

# Homebrew
export PATH=$PATH:/opt/homebrew/bin

if [[ "$OSTYPE" == "darwin"* ]]; then
  export EDITOR=/opt/homebrew/bin/vim
fi


#pyenv
PATH=$(pyenv root)/shims:$PATH

# linkerd
export PATH=$PATH:/Users/nakulchawla/.linkerd2/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nakulchawla/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nakulchawla/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nakulchawla/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nakulchawla/google-cloud-sdk/completion.zsh.inc'; fi
