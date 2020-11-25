#!/usr/bin/env bash

RESET=$(printf '\033[0m')
RED=$(printf '\033[0;31m')
GREEN=$(printf '\033[0;32m')
YELLOW=$(printf '\033[1;33m')

ALLOWED_MIME_TYPES="text/html text/plain text/xml text/x-shellscript inode/x-empty image/svg+xml"

check_mime_type() {
  UNKNOWN=0
  while read -r FILENAME; do
    MIME_TYPE=$(file -b --mime-type "$FILENAME")
    if [[ ! $ALLOWED_MIME_TYPES == *"$MIME_TYPE"* ]]; then
      echo "$YELLOW  [$MIME_TYPE]$RESET $FILENAME"
      UNKNOWN=${UNKNOWN+1}
    fi
  done
  exit $UNKNOWN
}

if ! git diff-index --name-only --diff-filter=ACM --cached HEAD | check_mime_type; then
  echo "$RED  ✘ Unknown mime types, please review...$RESET"
  return 1
else
  echo "$GREEN  ✔ Allowed mime types$RESET"
  return 0
fi
