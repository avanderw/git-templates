#!/bin/sh

SUBJECT_LINE_MIN_LEN_ERR=0
if [ $(echo ${#1}) -lt $SUBJECT_LINE_MIN_LEN ]; then
	fail "A wee bit short"
    SUBJECT_LINE_MIN_LEN_ERR=1
else
	pass "Not too short"
fi

return $SUBJECT_LINE_MIN_LEN_ERR