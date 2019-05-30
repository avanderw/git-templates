#!/bin/sh

SUBJECT_LINE_CAPITALISE_ERR=0
CHAR=${1:0:1}
REGEX="^[[:upper:]]$"

if [[ $CHAR =~ $REGEX ]]; then
	pass "Sentence case"
else
	fail "No sentence case"
    SUBJECT_LINE_CAPITALISE_ERR=1
fi

return $SUBJECT_LINE_CAPITALISE_ERR