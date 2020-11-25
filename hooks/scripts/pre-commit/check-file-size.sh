#!/usr/bin/env bash

RESET=$(printf '\033[0m')
RED=$(printf '\033[0;31m')
GREEN=$(printf '\033[0;32m')
YELLOW=$(printf '\033[1;33m')

HARD_LIMIT=65536
SOFT_LIMIT=32768

check_file_size() {
  n=0
  while read -r FILE_NAME; do
    FILE_SIZE=$(stat -c %s "$FILE_NAME")
    if [ "$FILE_SIZE" -lt "${SOFT_LIMIT}" ]; then
      n=${n+0}
    elif [ "$FILE_SIZE" -lt "${HARD_LIMIT}" ]; then
      echo "$YELLOW [$FILE_SIZE]$RESET $FILE_NAME"
      n=${n+0}
    else
      echo "$RED [$FILE_SIZE]$RESET $FILE_NAME"
      n=${n+1}
    fi
  done
  exit $n
}

if ! git diff-index --name-only --diff-filter=ACM --cached HEAD | check_file_size; then
  echo "$RED  ✘ Large files, please review...$RESET"
  return 1
else
  echo "$GREEN  ✔ No large files$RESET"
  return 0
fi
