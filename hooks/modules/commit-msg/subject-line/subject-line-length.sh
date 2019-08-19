#!/bin/sh

info "Length is ${#1} characters"
if [ ${#1} -lt $SUBJECT_LINE_MIN_LEN ]; then
	fail "Length is a wee bit short"
	return 1
else
	pass "Length is not too short"
fi


if [ ${#1} -le $SUBJECT_LINE_SOFT_MAX ]; then
	pass "Length is just right"
	return 0
fi

if [ ${#1} -le $SUBJECT_LINE_MAX_LEN ]; then
	warn "Length is a tad long"
	return 0
fi

fail "Length is just too long"
return 1

