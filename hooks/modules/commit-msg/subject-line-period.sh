#!/bin/sh
h2 "subject-line-period.sh"
info "Ensure there is no period at the end fo the line"

if [[ ! -z "$1" && ${1:${#1}-1:1} == . ]]; then
	fail "Why the ending period?"
	return 1
else
	pass "No ending period"
	return 0
fi
