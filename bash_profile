#env

export KEYTIMEOUT=1
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
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

# kube
export KUBE_EDITOR=vim




