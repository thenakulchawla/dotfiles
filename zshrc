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
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ll='ls -GFhA'
alias shell='echo $SHELL'
alias path='echo $PATH'
alias des='cd ~/Desktop'
alias down='cd ~/Downloads'
alias home='cd ~/'
alias cls="clear && printf '\e[3J'"
alias localvar='cd /usr/local/var'
alias usr='cd /usr'
export PATH=/Library/TeX/texbin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export KEYTIMEOUT=1
export PATH=/usr/local/share/dotnet:$PATH
export HADOOP_HOME="/Users/princechawla/hadoop"
export HADOOP_CLASSPATH="/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home/lib/tools.jar"

function quit {
    osascript -e 'tell application "Terminal" to quit' 
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
