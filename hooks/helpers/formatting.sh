#!/bin/sh
# Colors
RED=`printf '\033[1;31m'`
GREEN=`printf '\033[1;32m'`
YELLOW=`printf '\033[1;33m'`
WHITE=`printf '\033[1;97m'`
GREY=`printf '\033[1;37m'`

# Icons
CHECK=`printf ${GREEN}'✔'${WHITE}`
CROSS=`printf ${RED}'✘'${WHITE}`
EXCLAMATION=`printf ${YELLOW}'!'${WHITE}`

h1() {
	echo "${WHITE}$1 ..."
}

h2() {
	echo "   ${WHITE}$1 ..."
}

p() {
	echo "   ${GREY}$1"
}

info() {
	echo "   ${GREY}$1"
}

fail() {
	echo " ${CROSS} ${GREY}$1${WHITE}"
}

pass() {
	echo " ${CHECK} ${GREY}$1${WHITE}"
}

warn() {
	echo " ${EXCLAMATION} ${GREY}$1${WHITE}"
}