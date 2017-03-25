BASEDIR=$(dirname `readlink -f $0`)
source $BASEDIR/colors.zsh

function joinstr {
	local IFS="$1";
	shift;
	echo "$*";
}

function clean {
	printf "\r                                                                                                                                                "
}

function info {
	clean
	printf "\r   ${CYELLOW}[${CRESET}${CGRAY} .. ${CRESET}${CYELLOW}]${CRESET} $1\n"
}

function progress {
	clean
	printf "\r   ${CYELLOW}[${CRESET}${CGRAY} .. ${CRESET}${CYELLOW}]${CRESET} $1"
	sleep .08
}

function question {
	clean
	printf "\r   ${CYELLOW}[${CRESET}${CYELLOW} ?? ${CRESET}${CRESET}${CYELLOW}]${CRESET} $1 "
	read -r -e REPLY < /dev/tty
}

function confirm {
	clean
	printf "\r   ${CYELLOW}[${CRESET}${CYELLOW} ?? ${CRESET}${CRESET}${CYELLOW}]${CRESET} $1 [yn] "
	read -n 1 -r -i "Y" REPLY < /dev/tty
	if [[ ! $REPLY =~ ^[Yy]$ ]]; then
		return 1
	fi
}

function success {
	clean
	printf "\r   ${CYELLOW}[${CRESET}${CGREEN}DONE${CRESET}${CYELLOW}]${CRESET} $1\n"
}

function error {
	clean
	printf "\r   ${CYELLOW}[${CRESET}${CRED}FAIL${CRESET}${CYELLOW}]${CRESET} $1\n"
	exit 1
}
