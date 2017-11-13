export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
if [ "$COLORTERM" = "gnome-terminal" -a "$TERM" "=~" "xterm.*" ]; then
    export TERM="xterm-256color"
fi
export HISTSIZE=10000

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
#Alias
alias ll='ls -GFhA'
alias shell='echo $SHELL'
alias path='echo $PATH'
alias des='cd ~/Desktop'
alias down='cd ~/Downloads'
alias cls="clear && printf '\e[3J'"
alias localvar='cd /usr/local/var'
alias usr='cd /usr'
alias home='cd'
alias cascade='ssh -p 6022 nchawla3@www.thothlab.com'
alias lab='ssh nchawla3@10.218.108.75'
alias g++='g++ -std=c++11'
alias dash='~/workspace/ns-allinone-3.25/ns-3.25'
alias dscr='~/workspace/ns-allinone-3.25/ns-3.25/scratch'
alias dhelper='~/workspace/ns-allinone-3.25/ns-3.25/src/applications/helper'
alias dmodel='~/workspace/ns-allinone-3.25/ns-3.25/src/applications/model'
alias g='git'
alias compile='( cd ~/workspace/ns-allinone-3.25/ns-3.25 && ./waf )'


#Export to path

export PATH=/Library/TeX/texbin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export KEYTIMEOUT=1
export PATH=/usr/local/share/dotnet:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "



function quit {
    osascript -e 'tell application "Terminal" to quit' 
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
