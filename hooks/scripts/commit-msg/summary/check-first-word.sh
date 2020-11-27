#!/usr/bin/env bash

RESET=$(printf '\033[0m')
RED=$(printf '\033[0;31m')
GREEN=$(printf '\033[0;32m')

APPROVED_VERB="Fix, Change, Add, Remove, Deprecate, Secure, Document, Maintain, Release"

SUMMARY=$(< "$1" head -1)
FIRST_WORD=$(echo "$SUMMARY" | (awk '{print $1}'))
if [[ $APPROVED_VERB == *"$FIRST_WORD"* ]]; then
  echo "$GREEN  ✓ Subject starts with an approved verb$RESET"
  return 0
else
  echo "$RED  ✘ Subject does not start with and approved word"
  echo "      (use <$APPROVED_VERB>)$RESET"
  return 1
fi