alias ll='ls -GFhA'
alias shell='echo $SHELL'
alias path='echo $PATH'
alias des='cd ~/Desktop'
alias down='cd ~/Downloads'
alias cls="clear && printf '\e[3J'"
alias localvar='cd /usr/local/var'
alias usr='cd /usr'
alias home='cd'
# alias lab='ssh nchawla3@10.218.108.75'
alias g++='g++ -std=c++11'
# alias dwaf='~/workspace/ns-allinone-3.25/ns-3.25'
# alias dscr='~/workspace/ns-allinone-3.25/ns-3.25/scratch'
# alias dhelper='~/workspace/ns-allinone-3.25/ns-3.25/src/applications/helper'
# alias dmodel='~/workspace/ns-allinone-3.25/ns-3.25/src/applications/model'
alias g='git'
alias py3='python3'
alias tf="terraform"

# xclip
alias xclip='xclip -sel clip <'

# latex
alias pdflatex='pdflatex -interaction=batchmode'

# nginx
alias ngin='cd /usr/local/etc/nginx'

# docker
alias d='docker'
alias dall='docker ps -aq'
alias dalli='docker images -aq'
alias dstop='docker stop $(docker ps -aq)'
alias drm='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -aq)'

# managers
alias manager1='ssh -i .ssh/swarm.pem ubuntu@34.214.192.28'
alias manager2='ssh -i .ssh/swarm.pem ubuntu@35.162.245.23'
alias manager3='ssh -i .ssh/swarm.pem ubuntu@52.13.183.184'

# workers
alias worker1='ssh -i .ssh/swarm.pem ubuntu@52.43.100.216'
alias worker2='ssh -i .ssh/swarm.pem ubuntu@52.43.15.59'

# world-wire
alias auto='cd ~/world-wire-automation'
alias wws='cd ~/go/src/github.ibm.com/gftn/world-wire-services'
