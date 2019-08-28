#!/bin/sh
h2 "prevent-master-commit.sh"
info "Prevent direct commits to ${BLUE}refs/heads/master${GREY}"

branch=$(git symbolic-ref HEAD)
if [ "$branch" = "refs/heads/master" ]; then
  warn "You are commiting to ${YELLOW}${branch}${GREY}"
  warn "You should not be committing directly to master"
  info "  - this encourages the use of pull requests"
  info "  - pull requests can be tested and reviewed"
  info "  - control can be exercised on when to release"

  # shellcheck disable=SC2154
  if [ "${prevent_master_commit}" = "ENABLED" ]; then
    info "This rule has been enabled"
    fail "You are prevented from modifying master"
    return 1
  else
    info "This rule has been disabled"
    pass "You may modify master"
  fi
else
  info "You are committing to ${GREEN}${branch}${GREY}"
  pass "You are not modifying master"
fi
