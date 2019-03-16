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
alias r="source $HOME/.bashrc"
alias c="clear"
alias e="exit"
alias g="git"
alias t="tmux"
alias v="vim"

# pacman aliases
alias pu="sudo pacman -Syyu" # update
alias ps="sudo pacman -Ss" # search
alias pi="sudo pacman -S" # install
alias piu="sudo pacman -U" # install URL
alias pli="sudo pacman -Q" # list installed
alias psi="sudo pacman -Qs" # search installed
alias pii="sudo pacman -Qi" # info installed
alias pri="sudo pacman -Rns" # remove installed

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
