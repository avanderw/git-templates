#!/bin/sh

# Colors
RED=`printf '\033[1;31m'`
GREEN=`printf '\033[1;32m'`
YELLOW=`printf '\033[1;33m'`
BLUE=`printf '\033[1;34m'`
MAGENTA=`printf '\033[35m'`
CYAN=`printf '\033[36m'`
WHITE=`printf '\033[1;97m'`
GREY=`printf '\033[0m'`

# Icons
CHECK=`printf ${GREEN}'✔'${GREY}`
CROSS=`printf ${RED}'✘'${GREY}`
EXCLAMATION=`printf ${YELLOW}'!'${GREY}`

h1() {
  echo "${GREY}"
	echo "${CYAN}== $1"
}

h2() {
  echo "${GREY}"
	echo "   ${CYAN}$1"
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