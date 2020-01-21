# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export KEYTIMEOUT=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

function quit {
    osascript -e 'tell application "Terminal" to quit'
}
