# Enable dtags
BASEDIR=$(dirname `readlink -f $0`)
command -v dtags-activate > /dev/null 2>&1 && eval "`dtags-activate zsh`"
