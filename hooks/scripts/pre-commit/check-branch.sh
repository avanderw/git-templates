#!/usr/bin/env bash

RESET=$(printf '\033[0m')
RED=$(printf '\033[0;31m')
GREEN=$(printf '\033[0;32m')

BRANCH=$(git symbolic-ref HEAD)
if [ "$BRANCH" = "refs/heads/master" ]; then
  echo "$RED  ✘ Committing to '${BRANCH}'$RESET"
  return 1
else
  echo "$GREEN  ✔ Committing to '${BRANCH}'$RESET"
  return 0
fi