#!/bin/sh

h2 "Body composition"

BODY_WRAP=72
BODY_ERR=0

info "Checking body width"
current_line=0
while read -r line; do
	current_line=$[$current_line + 1]
	line_length=${#line}
	first_char=${line:0:1}
	if [ "${first_char}" != "#" ]; then
		if [ $line_length -gt $BODY_WRAP ]; then
			fail "Line $current_line: $line"
			BODY_ERR=1
		fi
	fi
	
done <<< "$1"

if [ $BODY_ERR -eq 1 ]; then
	info "Body must be wrapped at ${BODY_WRAP} characters"
else
	pass "Body is correctly wrapped"
	info "Take care of your body. It's the only place you have to live"
fi

echo
return $BODY_ERR