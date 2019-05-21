if [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    alias ls='ls -1GF'
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
alias pi1='ssh pi@192.168.0.8'
alias pi2='ssh pi@192.168.0.9'

alias serve='bundle exec jekyll serve'

# VMs
# alias vm0='ssh nchawla3@10.107.19.39'
# alias vm1='ssh nchawla3@10.107.19.40'
# alias vm2='ssh nchawla3@10.107.19.41'
# alias vm3='ssh nchawla3@10.107.19.42'
# alias vm4='ssh nchawla3@10.107.19.43'
# alias vm5='ssh nchawla3@10.107.19.34'
# alias vm6='ssh nchawla3@10.107.19.35'
# alias vm7='ssh nchawla3@10.107.19.36'
# alias vm8='ssh nchawla3@10.107.19.37'
# alias vm9='ssh nchawla3@10.107.19.38'

# xclip
alias xclip='xclip -sel clip <'

# latex
alias pdflatex='pdflatex -interaction=batchmode'

