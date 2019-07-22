#!/bin/sh

h1() {
	echo "${WHITE}$1 ..."
}

h2() {
	echo "      ${GREY}$1 ..."
}

p() {
	echo "      ${GREY}$1"
}

info() {
	echo "      ${GREY}$1"
}

fail() {
	echo "    ${CROSS} ${GREY}$1${WHITE}"
}

pass() {
	echo "    ${CHECK} ${GREY}$1${WHITE}"
}

warn() {
	echo "    ${EXCLAMATION} ${GREY}$1${WHITE}"
}