#!/usr/bin/env bash

RESET=$(printf '\033[0m')
RED=$(printf '\033[0;31m')
GREEN=$(printf '\033[0;32m')
YELLOW=$(printf '\033[1;33m')

SOFT_LIMIT=16
HARD_LIMIT=32
FILE_COUNT=$(git diff-index --name-only --diff-filter=ACM --cached HEAD -- | wc -w | tr -d ' ')
if [ "$FILE_COUNT" -lt "${SOFT_LIMIT}" ]; then
  echo "$GREEN  ✔ Small commit ($FILE_COUNT files)$RESET"
  return 0
elif [ "$FILE_COUNT" -lt "${HARD_LIMIT}" ]; then
  echo "$YELLOW  Medium commit ($FILE_COUNT files)"
  return 0
else
  echo "$RED  ✘ Large commit ($FILE_COUNT files), consider breaking up the commit$RESET"
  return 1
fi