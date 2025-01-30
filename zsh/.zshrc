# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/completions"
plug "zap-zsh/sudo"
plug "wintermi/zsh-starship"
plug "zsh-users/zsh-history-substring-search"
plug "zap-zsh/fzf"

export EDITOR=nvim

alias c="clear"
alias l="ls -AGlsh --color"
alias hy="c;hyfetch"
alias n="nvim"
alias v="nvim"
alias t="tree -a"
alias y="yazi"

# Load and initialise completion system
autoload -Uz compinit
compinit
