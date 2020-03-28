set -o vi

alias v=vim
alias ls='ls --color=auto'
alias pm=pulsemixer
alias finger='pinky -l'
alias plan='vim /home/ray/.plan'
alias project='vim /home/ray/.project'
alias todo='calcurse'
alias xrc='vim /home/ray/dotfiles/.xinitrc'
alias brc='vim /home/ray/dotfiles/.bashrc'
alias vrc='vim /home/ray/dotfiles/.vimrc'
alias fse='cd /home/ray/comp1003-1920-template-repo'
alias xbk='vim /home/ray/dotfiles/.xbindkeysrc'
alias irc='vim /home/ray/dotfiles/.inputrc'
shopt -s autocd

#bind '"^M":"^[\n"'
#bind '"\n":"^[\n"'
#bind '"\e^M":"^[^M"'

function cd {
    builtin cd "$@" && ls
}

export PATH=$PATH:/home/ray/scripts
export EDITOR=vim
