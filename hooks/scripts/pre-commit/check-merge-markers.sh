#!/usr/bin/env bash

RESET=$(printf '\033[0m')
RED=$(printf '\033[0;31m')
GREEN=$(printf '\033[0;32m')
YELLOW=$(printf '\033[1;33m')

printf %s "$YELLOW"
if git diff --check; then
  echo "$GREEN  ✔ No merge markers$RESET"
  return 0
else
  echo "$RED  ✘ Merge markers leftover, please review$RESET"
  return 1
fi