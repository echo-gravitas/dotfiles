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
plug "Aloxaf/fzf-tab"
plug "chivalryq/git-alias"
plug "MichaelAquilina/zsh-you-should-use"

# ENV Variables
export EDITOR="/usr/bin/nvim"
export VISUAL="nvim"
export CREDENTIALS_DIRECTORY="/etc/systemd/credentials"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export SDL_VIDEO_X11_DGAMOUSE=0
export XDG_SESSION_TYPE=wayland


# Misc aliases
alias spider="telnet dx.da0bcc.de 7300"
alias c="clear"
alias l="ls -Alsh --color"
alias ff="c;fastfetch"
alias n="nvim"
alias v="nvim"
alias nano="nvim"
alias vi="nvim"
alias vim="nvim"
alias t="tree -a"
alias y="yazi"
alias m="unimatrix --flashers --asynchronous --speed 97"
alias ctl="systemctl"
alias sctl="sudo systemctl"
alias jrnl="journalctl"
alias sjrnl="sudo journalctl"
alias mail="aerc"
alias clearnvim="rm -rf ~/.local/share/nvim ~/.local/state/nvim"

# Load and initialise completion system
autoload -Uz compinit
compinit
