# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1

# Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export KEYTIMEOUT=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8
export NVM_DIR="$HOME/.nvm"

function quit {
    osascript -e 'tell application "Terminal" to quit'
}

# Homebrew
export PATH=$PATH:/opt/homebrew/bin

if [[ "$OSTYPE" == "darwin"* ]]; then
  export EDITOR=/opt/homebrew/bin/vim
fi
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
export PATH="/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"

export PATH=$PATH:$HOME/google-cloud-sdk/bin
