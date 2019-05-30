#!/bin/sh

h2 "Body composition"

BODY_WRAP=72
BODY_ERR=0

current_line=0
while read -r line; do
	current_line=$[$current_line + 1]
	if [ ${#line} -gt $BODY_WRAP ]; then
		fail "line $current_line: $line"
		BODY_ERR=1
	fi
done <<< "$1"

if [ $BODY_ERR -eq 1 ]; then
	p "Body must be wrapped at ${BODY_WRAP} characters"
else
	pass "Take care of your body. It's the only place you have to live"
fi

echo
return $BODY_ERR