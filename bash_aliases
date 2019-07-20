if [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    alias ll='ls -a'
    alias la='ls -ahltGF'
    alias displayoff='pmset displaysleepnow'
    alias pyc='find . -type f -name \*.pyc -delete'
else
    # Linux
    alias ll='ls -a --color=auto'
    alias la='ls -ahlt --color=auto'
    alias pyc='pyclean .'
fi

alias tl='tmux list-sessions'
alias ta='tmux attach-session -t'
alias tn='tmux new -s'

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
alias py3='python3'
alias pi1='ssh pi@192.168.0.4'
alias pi2='ssh pi@192.168.0.7'

alias serve='bundle exec jekyll serve'

# xclip
alias xclip='xclip -sel clip <'

# latex
alias pdflatex='pdflatex -interaction=batchmode'

# VMs
alias vm0='ssh nchawla3@10.107.19.39'
alias vm1='ssh nchawla3@10.107.19.40'
alias vm2='ssh nchawla3@10.107.19.41'
alias vm3='ssh nchawla3@10.107.19.42'
alias vm4='ssh nchawla3@10.107.19.43'
