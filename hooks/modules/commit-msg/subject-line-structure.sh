#!/bin/sh

h2 "subject-line-structure.sh"
info "Ensure first letter is uppercase"
info "Ensure no period at the end of the subject"

errorFound=0
CHAR=${1:0:1}
REGEX="^[[:upper:]]$"

if [[ $CHAR =~ $REGEX ]]; then
  pass "First letter is uppercase"
else
  fail "Please capatalise the first letter"
  errorFound=1
fi

if [[ ! -z "$1" && ${1:${#1}-1:1} == . ]]; then
  fail "Why the ending period?"
  errorFound=1
else
  pass "No ending period"
fi

return $errorFound