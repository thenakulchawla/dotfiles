export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
#export LS_COLORS
#export TERM=xterm-256color
alias ll='ls -GFhA'
alias shell='echo $SHELL'
alias path='echo $PATH'
alias des='cd ~/Desktop'
alias down='cd ~/Downloads'
alias home='cd ~/'
alias cls="clear && printf '\e[3J'"
alias localvar='cd /usr/local/var'
alias usr='cd /usr'

function quit {
    osascript -e 'tell application "Terminal" to quit' 
	}

DISABLE_AUTO_TITLE="true"

