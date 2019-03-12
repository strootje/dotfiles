# Setup Dotfiles
export DOTFILES=$HOME/.dotfiles
set PATH $PATH $DOTFILES/bin
alias dgit='git --git-dir=$DOTFILES/.git --work-tree=$HOME'

# Setup NodeJS
set PATH $PATH $HOME/

# Setup Default Editor
set EDITOR vim
