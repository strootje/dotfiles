# Dotfile installation
export DOTFILES=$HOME/.dotfiles
alias dot="git --git-dir=$DOTFILES/.git --work-tree=$HOME"

# Setup PATH variable
export PATH=$PATH:$DOTFILES/bin

# Update default editor
export EDITOR="vim"

# Path to oh-my-zsh installation
export ZSH=$DOTFILES/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="simple"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(archlinux docker emoji git)

# Enable oh my zsh
source $ZSH/oh-my-zsh.sh

# Enable nvm
export NVM_DIR="$HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source zsh files
#source $DOTFILES/clang/clang.zsh
#source $DOTFILES/golang/golang.zsh
#source $DOTFILES/ruby/ruby.zsh
#source $DOTFILES/wine/wine.zsh
#source $DOTFILES/zsh/insert-sudo.zsh
#source $DOTFILES/zsh/dtags.zsh
