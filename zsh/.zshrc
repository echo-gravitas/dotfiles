# Plugins
source "${HOME}/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/darkstar/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export EDITOR=nvim

alias c="clear"
alias l="ls -lsah --color"
alias upgrade="sudo pacman -Suy"
alias hy="c;hyfetch"
alias n="nvim"
alias t="tree -a"
alias y="yazi"

eval "$(starship init zsh)"
