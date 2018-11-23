# Dotfile installation
export DOTFILES=$HOME/.dotfiles
alias dot="git --git-dir=$DOTFILES/.git --work-tree=$HOME"

# Setup PATH variable
export PATH=$PATH:$DOTFILES/bin

# Setup default editor
export EDITOR="vim"

# Zsh installation
export ZSH=$DOTFILES/oh-my-zsh
ZSH_THEME="simple"
plugins=(archlinux docker emoji git rust)

# Enable oh my zsh

# Nvm installation
export NVM_DIR="$DOTFILES/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source zsh files
source $ZSH/oh-my-zsh.sh
source $DOTFILES/config/dtags.zsh
source $DOTFILES/keybinds/sudo-prefix.zsh
