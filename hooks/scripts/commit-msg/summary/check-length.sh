#!/usr/bin/env bash

RESET=$(printf '\033[0m')
RED=$(printf '\033[0;31m')
GREEN=$(printf '\033[0;32m')

MAX=72
MIN=16

SUMMARY=$(< "$1" head -1)
if [ ${#SUMMARY} -gt $MAX ]; then
  echo "$RED  ✘ (Summary (${#SUMMARY} characters) is longer than $MAX characters$RESET"
  return 1
elif [ ${#SUMMARY} -ge $MIN ]; then
  echo "$GREEN  ✓ Good summary length (${#SUMMARY} characters)$RESET"
  return 0
else
  echo "$RED  ✘ Summary (${#SUMMARY} characters) is shorter than 16 characters$RESET"
  return 1
fi
