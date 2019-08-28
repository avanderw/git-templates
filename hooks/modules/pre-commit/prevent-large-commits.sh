#!/bin/sh

h2 "prevent-large-commits.sh"
info "Warn when committing more than ${BLUE}${soft_filecount_limit} files${GREY}"
info "Fail when committing more than ${BLUE}${hard_filecount_limit} files${GREY}"

committed_filecount=$(git diff-index --name-only --diff-filter=ACM --cached HEAD -- | wc -w | tr -d ' ')

if [ "$committed_filecount" -lt "${soft_filecount_limit}" ]; then
  pass "You are committing ${GREEN}${committed_filecount} files${GREY}"
  return 0
elif [ "$committed_filecount" -lt "${hard_filecount_limit}" ]; then
  info "Consider the modularity of your change if it affects ${YELLOW}${committed_filecount} files${GREY}"
  warn "This commit is a bit bloated"
  return 0
else
  info "Why commit more than ${RED}${hard_filecount_limit} files${GREY}?"
  info "There is never a healthy reason for this"

  if [ "${prevent_large_commits}" = "ENABLED" ]; then
    info "This rule has been enabled"
    fail "Your commits are not modular enough!"
    return 1
  else
    info "This rule has been disabled"
    pass "Your commit with too many changes is allowed"
    return 0
  fi
fi
