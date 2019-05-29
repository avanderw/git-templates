#!/bin/sh

h1() {
	echo "${WHITE}$1 ..."
}

h2() {
	echo "      ${GREY}$1 ..."
}

p() {
	echo "      ${GREY}$1"
	echo
}

fail() {
	echo "    ${CROSS} ${GREY}$1${WHITE}"
}

pass() {
	echo "    ${CHECK} ${GREY}$1${WHITE}"
}