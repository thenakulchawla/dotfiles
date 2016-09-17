export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ll='ls -GFhA'
alias shell='echo $SHELL'
alias path='echo $PATH'
alias des='cd ~/Desktop'
alias down='cd ~/Downloads'
alias home='cd ~/'
alias cls="clear && printf '\e[3J'"

function quit {
    osascript -e 'tell application "Terminal" to quit' 
}
