#!/bin/sh

REGEX="^(Closes|Updates) [A-Z]+-\d+$"
MESSAGE="Closes AS-55"
[[ $MESSAGE =~ $REGEX ]] && echo "good" || echo "bad"

h2 "Linking issue"

LINK_ISSUE_ERR=0


if echo "$MESSAGE" | grep "$REGEX"; then
	pass "Thou shall pass"
else
	fail "Thou shalt not pass without referencing a story"
	p "Looking for /$REGEX/"
    LINK_ISSUE_ERR=1
fi

echo
return $LINK_ISSUE_ERR