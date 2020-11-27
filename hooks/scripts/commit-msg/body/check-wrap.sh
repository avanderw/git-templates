#!/usr/bin/env bash

RESET=$(printf '\033[0m')
RED=$(printf '\033[0;31m')
GREEN=$(printf '\033[0;32m')

BODY=$(tr '\n' '\f' < "$1" | sed -E 's/(\S| )+\f\f?//' | tr '\f' '\n')
WRAP=80
MAX=0
CURR_LINE=0
while read -r LINE; do
  CURR_LINE=${CURR_LINE+1}
  LENGTH=${#LINE}
  FIRST_CHAR=${LINE:0:1}
  if [ "${FIRST_CHAR}" != "#" ]; then # ignore comments
    if [ $MAX -lt "$LENGTH" ]; then
      MAX=$LENGTH
    fi
  fi
done <<< "$BODY"

if [ "$MAX" -gt $WRAP ]; then
  echo "$RED  ✘ Body does not wrap at $WRAP characters$RESET"
  return 1
else
  echo "$GREEN  ✓ The body is wrapped ($MAX characters)$RESET"
  return 0
fi