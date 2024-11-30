# The following lines were added by compinstall
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
stty -ixon
bindkey -v
alias ls="ls --color"
alias ssh="TERM=xterm-256color ssh"
alias config="/usr/bin/git --git-dir=$HOME/source/dotfiles --work-tree=$HOME"
alias v=nvim

setopt prompt_subst
autoload -U colors && colors
source ~/.config/zsh/zsh-theme
source ~/.config/zsh/git.zsh
eval "$(fzf --zsh)"
