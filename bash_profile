#env

export KEYTIMEOUT=1
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

export PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH
export CC=clang

# kube
export KUBE_EDITOR=vim


# Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin



export PATH="$HOME/.cargo/bin:$PATH"

# gcloud
export PATH="$HOME/google-cloud-sdk/bin:$PATH"

# kops
export KOPS_CLUSTER_NAME=development.worldwire-dev.io.k8s.local
export KOPS_STATE_STORE=s3://ww-kube-dev

# ibm cloud zsh autocomplete
# source /usr/local/ibmcloud/autocomplete/zsh_autocomplete
