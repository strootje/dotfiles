# Setup Dotfiles
export DOTFILES=$HOME/.dotfiles
set PATH $PATH $DOTFILES/bin
alias dgit='git --git-dir=$DOTFILES/.git --work-tree=$HOME'

# Setup nvm
function nvm
	bass source $DOTFILES/nvm/nvm.sh --no-use ';' nvm $argv
end
nvm use node
set PATH $PATH $HOME/node_modules/.bin

# Setup Default Editor
set EDITOR vim
