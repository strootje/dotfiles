#!/usr/bin/env bash

# include colors
source $DOTFILES/zsh/colors.zsh

function info {
	printf "\r### ${CYELLOW}[${CRESET} ${CBLUE}..${CRESET} ${CYELLOW}]${CRESET} ::: $1\n"
}

function progress {
	printf "\r### ${CYELLOW}[${CRESET} ${CBLUE}..${CRESET} ${CYELLOW}]${CRESET} ::: $1"
}

function question {
	printf "\r### ${CYELLOW}[${CRESET} ${CYELLOW}??${CRESET} ${CYELLOW}]${CRESET} ::: $1"
}

function success {
	printf "\r### ${CYELLOW}[${CRESET}${CGREEN}DONE${CRESET}${CYELLOW}]${CRESET} ::: $1\n"
}

function error {
	printf "\r### ${CYELLOW}[${CRESET}${CRED}FAIL${CRESET}${CYELLOW}]${CRESET} ::: $1\n"
}