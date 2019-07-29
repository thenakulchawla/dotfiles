if [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    # alias ls='ls -1GF'
    alias sl='ls -lGF'
    alias ll='ls -hltGF'
    alias la='ls -ahltGF'
    alias displayoff='pmset displaysleepnow'
    alias pyc='find . -type f -name \*.pyc -delete'
else
    # Linux
    alias ls='ls -1 --color=auto'
    alias sl='ls -l --color=auto'
    alias ll='ls -hlt --color=auto'
    alias la='ls -ahlt --color=auto'
    alias pyc='pyclean .'
fi


alias ll='ls -GFhA'
alias shell='echo $SHELL'
alias path='echo $PATH'
alias des='cd ~/Desktop'
alias down='cd ~/Downloads'
alias cls="clear && printf '\e[3J'"
alias localvar='cd /usr/local/var'
alias usr='cd /usr'
alias home='cd'
alias g++='g++ -std=c++11'
alias g='git'
alias py3='python3'

# xclip
alias xclip='xclip -sel clip <'

# latex
alias pdflatex='pdflatex -interaction=batchmode'

# xclip
alias xclip='xclip -sel clip <'

# latex
alias pdflatex='pdflatex -interaction=batchmode'

# ssh
alias dev='ssh -i ~/.ssh/nakul-dev.pem ubuntu@34.221.83.232'

# world-wire
alias wws='cd ~/go/src/github.ibm.com/gftn/world-wire-services'
alias auto='cd ~/go/src/github.ibm.com/gftn/world-wire-automation'
alias ibm='ssh -i ~/.ssh/id_ibm_cloud stellar@184.173.31.158'

alias auth='cd /Users/nc/go/src/github.ibm.com/gftn/world-wire-services/auth-service'

# tmux
alias tl='tmux list-sessions'
alias ta='tmux attach-session -t'
alias tn='tmux new -s'

# tasks
alias tasks='grep --exclude-dir=.git -rEI "TODO|FIXME" . 2>/dev/null'
