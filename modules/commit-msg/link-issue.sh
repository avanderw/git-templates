#!/bin/sh

h2 "Linking issue"

LINK_ISSUE_ERR=0

REGEX="(Closes|Updates) [A-Z]+-[0-9]+"
MESSAGE="$1"

if [[ $MESSAGE =~ $REGEX ]]; then
	pass "Thou shall pass"
else
	fail "Thou shalt not pass without referencing a story"
	p "Looking for /$REGEX/"
    LINK_ISSUE_ERR=1
fi

echo
return $LINK_ISSUE_ERR