#!/bin/sh

SUBJECT_LINE_PERIOD_ERR=0

if [[ ! -z "$1" && ${1:${#1}-1:1} == . ]]; then
	fail "Why the ending period?"
    SUBJECT_LINE_PERIOD_ERR=1
else
	pass "No ending period"
fi

return $SUBJECT_LINE_PERIOD_ERR
