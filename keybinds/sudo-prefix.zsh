prefix_sudo() {
	prefix="sudo"
	BUFFER="$prefix $BUFFER"
	CURSOR=$(($CURSOR + $#prefix + 1))
}

# Replace current buffer
zle -N prefix_sudo
# Add super-f keybind
bindkey "^f" prefix_sudo
