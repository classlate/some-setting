# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$ZSH/custom

# theme
ZSH_THEME="spaceship"

# plugins
plugins=(
  # git
  sudo
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# https://ohmyz.sh/
source $ZSH/oh-my-zsh.sh

# 通配符使用
setopt no_nomatch

# ------------- alias -------------
# path
alias p="~/project"
alias sl="~/self"
alias dl="~/Downloads"
# command
alias cl="clear"
alias sz="source ~/.zshrc"

# ------------- pack -------------

# fnm
export PATH=/home/classlate/.fnm:$PATH
eval "$(fnm env --use-on-cd --node-dist-mirror=https://repo.huaweicloud.com/nodejs/)"
# fnm end

# pnpm
export PNPM_HOME="/home/classlate/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
