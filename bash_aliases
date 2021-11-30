if [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    alias ll='ls -a'
    alias la='ls -ahltGF'
    alias displayoff='pmset displaysleepnow'
    alias pyc='find . -type f -name \*.pyc -delete'
    alias vi='/opt/homebrew/bin/vim'
    alias vim='/opt/homebrew/bin/vim'
else
    # Linux
    alias ll='ls -a --color=auto'
    alias la='ls -ahlt --color=auto'
    alias pyc='pyclean .'
fi

alias tl='tmux list-sessions'
alias ta='tmux attach-session -t'
alias tn='tmux new -s'
alias tk='tmux kill-session -t'

alias shell='echo $SHELL'
alias path='echo $PATH'
alias des='cd ~/Desktop'
alias down='cd ~/Downloads'
alias cls="clear && printf '\e[3J'"
alias localvar='cd /usr/local/var'
alias usr='cd /usr'
alias cloud='cd /Users/nakulchawla/Library/Mobile\ Documents/com~apple~CloudDocs'
alias home='cd'
alias g++='g++ -std=c++11'
alias g='git'
alias pi1='ssh ubuntu@192.168.86.210'
alias pi2='ssh ubuntu@192.168.86.211'
alias pi3='ssh ubuntu@192.168.86.212'
alias pi4='ssh ubuntu@192.168.86.213'


alias lsg='ls | grep'
alias psg='ps -ef| grep'
