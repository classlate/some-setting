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
# alias p="~/project"
# alias sl="~/self"
alias dl="~/Downloads"
# command
alias cl="clear"
alias sz="source ~/.zshrc"
alias rmn="rm -rf node_modules"
# npm
alias nig="npm install -g"
alias nlg="npm ls -g --depth=0"
# taze: https://github.com/antfu/taze
alias tz="npx taze"
alias tzr="npx taze -r"
# ni: https://github.com/antfu/ni
alias nio="ni --prefer-offline"
alias s="nr start"
alias d="nr dev"
alias b="nr build"
alias lint="nr lint"
alias lintf="nr lint --fix"
# git: sudo apt install git
alias gb='git branch'
alias gc='git clone'
alias gs='git status'
alias gp='git push'
alias gpl='git pull --rebase'
alias glo='git log --oneline'
alias glog='git log --oneline --graph'
alias gco='git checkout --orphan'

# ------------- function -------------
# path to project
function p() {
  if [ -n "$1" ]; then
    cd $HOME/project/$1
  else
    cd $HOME/project
  fi
}

# patn to self
function sl() {
  if [ -n "$1" ]; then
    cd $HOME/self/$1
  else
    cd $HOME/self
  fi
}

# tree
function tl() {
  # 如果第一个参数是数字
  if [[ $1 =~ ^[0-9]+$ ]]; then
    tree --dirsfirst -L $*
  else
    tree --dirsfirst -L 1 $*
  fi
}

# ------------- pack -------------

# fnm
export PATH=/home/classlate/.fnm:$PATH
eval "$(fnm env --use-on-cd --node-dist-mirror=https://repo.huaweicloud.com/nodejs/)"
# fnm end

# pnpm
export PNPM_HOME="/home/classlate/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
