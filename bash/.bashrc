# load /etc/bashrc if it exists
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# load ~/.bashrc.secret if it exists
if [ -f $HOME/.bashrc.secret ]; then
	source $HOME/.bashrc.secret
fi

# prompt
export PS1="\[$(tput bold)\]\[\033[38;5;14m\][\u@\h]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;9m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# general aliases
alias reload="source $HOME/.bashrc"
alias c="clear"
alias v="vim"

# git aliases
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gl="git log"
alias gm="git merge"
alias gco="git commit"
alias gcom="git commit -m"
alias gch="git checkout"
alias gpl="git pull"
alias gps="git push"

# docker aliases
alias dpa="docker image prune -f && docker network prune -f && docker container prune -f && docker volume prune -f"

# docker-compose aliases
alias dcu="docker-compose down && docker-compose up"
alias dcub="docker-compose down && docker-compose up --build"
alias dcd="docker-compose down"
alias dcr="docker-compose restart"
alias dce="docker-compose exec"
