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
export VISUAL=nvim

# Misc aliases
alias c="clear"
alias l="ls -AGlsh --color"
alias ff="c;fastfetch"
alias n="nvim"
alias v="nvim"
alias t="tree -a"
alias y="yazi"
alias m="unimatrix --flashers --asynchronous --speed 97"
alias ctl="sudo systemctl"

# git aliases
alias g="git"
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gp="git push"
alias gl="git log"
alias gsw="git switch"
alias gpt="git push --tags"
alias gpa="git push --all"

function gc() {
  git commit -m "$1"
}

# Load and initialise completion system
autoload -Uz compinit
compinit
