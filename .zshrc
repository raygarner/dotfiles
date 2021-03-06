# Enable colors and change prompt:
autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#PS1="%B%{$fg[blue]%}%n%{$reset_color%}@%{$fg[blue]%}%M %d %{$reset_color%}$%b "
#PS1="%B%n@%M %d $%b "
#PS1="%B%{$fg[blue]%}%n%{$reset_color%}@%{$fg[blue]%}%M %{$fg[white]%}%d %{$reset_color%}$%b "
PS1="%B%{$fg[green]%}%n%{$reset_color%}@%{$fg[green]%}%M %{$fg[white]%}%~ %{$reset_color%}$%b "
#PS1="%B%{$fg[green]%}%n %b%{$fg[white]%}%~ %{$reset_color%}$ "
#PS1="%B%{$fg[green]%}%n %b%{$fg[white]%}%~ %{$reset_color%}$ "
#PS1="%{$fg[white]%}%~ %{$reset_color%}$𝄞𝄢∴:%b "
#PS1="%{$fg[white]%}%~ %{$reset_color%}$%b "
PS1="%B%{$fg[green]%}%n%{$reset_color%}@%{$fg[green]%}%M %{$fg[white]%}%~ %{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


#set editor
export EDITOR=vim

#set browser
export BROWSER=brave

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

#load aliases
source $HOME/.aliases

#set auto cd
set -o AUTO_CD

#auto ls on cd
chpwd() ls

#show git branch on right hand side
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

#cabal for haskell libraries 
export PATH="$HOME/.cabal/bin:$PATH"

# Use lf to switch directories and bind it to ctrl-o
#lfcd () {
#    tmp="$(mktemp)"
#    lf -last-dir-path="$tmp" "$@"
#    if [ -f "$tmp" ]; then
#        dir="$(cat "$tmp")"
#        rm -f "$tmp"
#        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
#    fi
#}
#bindkey -s '^o' 'lfcd\n'
#
# Edit line in vim with ctrl-e:
#autoload edit-command-line; zle -N edit-command-line
#bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
#[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
#[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Load zsh-syntax-highlighting; should be last.
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Created by `userpath` on 2020-11-05 16:23:11
#export PATH="$PATH:/home/ray/.local/bin"
#export PATH="$PATH:/home/ray/.elan/bin"
