#!/bin/sh

h2 "Body composition"

BODY_ERR=0

BODY_WRAP=72
if ( true ); then
	fail "Body must be wrapped at ${BODY_WRAP} characters"
    BODY_ERR=1
else
	pass "Take care of your body. It's the only place you have to live"
fi

echo
return $BODY_ERR