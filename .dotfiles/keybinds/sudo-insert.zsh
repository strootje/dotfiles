sudo_insert () { zle beginning-of-line; zle -U "sudo " }
zle -N sudo-insert sudo_insert
bindkey "^[s" sudo-insert
