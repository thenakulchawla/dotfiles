export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


function quit {
    osascript -e 'tell application "Terminal" to quit'
}
