#!/usr/bin/env bash

RESET=$(printf '\033[0m')
RED=$(printf '\033[0;31m')
GREEN=$(printf '\033[0;32m')

SUMMARY=$(< "$1" head -1)
if [ "${SUMMARY: -1}" == . ]; then
  echo "$RED  ✘ Summary does not end with a period$RESET"
  return 1
else
  echo "$GREEN  ✓ Summary ends with a period$RESET"
  return 0
fi