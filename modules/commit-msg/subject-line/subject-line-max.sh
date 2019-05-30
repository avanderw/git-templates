#!/bin/sh

SUBJECT_LINE_MAX_LEN_ERR=0
if [ ${#1} -gt $SUBJECT_LINE_MAX_LEN ]; then
	fail "A tad long"
    SUBJECT_LINE_MAX_LEN_ERR=1
else
	pass "Not too long"
fi

return $SUBJECT_LINE_MAX_LEN_ERR
