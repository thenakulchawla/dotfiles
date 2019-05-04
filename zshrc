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
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export SERVICE_VERSION="v1"
export SERVICE_PORT="9080"
export MM_INFO_FILE="/Users/seema@ca.ibm.com/Work/gftn/market-maker-info.json"
export VERIFY_ACCOUNT_IDENTIFIER_URL="http://localhost:8081/v1/callback/verify_account_identifier"
export QUOTES_SERVICE_INTERNAL_API_URL="http://localhost:10101/v1"
export FEDERATION_SERVICE_INTERNAL_API_URL="http://localhost:11001/v1"
export RDFI_QUOTES_SYSTEM_API_URL="http://localhost:8081/v1/callback/quote"
export PARTICIPANT_REGISTRY_URL="http://localhost:10080/v1"
export COMPLIANCE_SERVICE_INTERNAL_API_URL="http://localhost:11003/v1"
export VERIFY_COMPLIANCE_URL="http://localhost:11003/v1"
export HOME_DOMAIN_NAME="nz.one.payments.gftn.io"
export STELLAR_NODE_CONFIG="../utility/nodeconfig.toml"
export SERVICE_LOG_FILE="log.txt"
export FEES_CALLBACK_URL="http://localhost:8081/v1/callback/fees"
export RDFI_EXCHANGE_SYSTEM_API_URL="http://localhost:8081/v1/callback/exchange/verify"
export SERVICE_ERROR_CODES_FILE="error-codes/apiErrorCodes.toml"
export HORIZON_CLIENT_URL="https://horizon-testnet.stellar.org"
export ORIGIN_ALLOWED="true"
export PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH
export CC=clang

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
