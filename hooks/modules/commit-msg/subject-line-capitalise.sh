#!/bin/sh

h2 "subject-line-capitalise.sh"
info "Ensure first letter is uppercase"

CHAR=${1:0:1}
REGEX="^[[:upper:]]$"

if [[ $CHAR =~ $REGEX ]]; then
  pass "First letter is uppercase"
  return 0
else
  fail "Please capatalise the first letter"
  return 1
fi