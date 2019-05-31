#!/bin/sh

h2 "Commit size"

LARGE_COMMIT_ERR=0
MAX_FILE_LIMIT=8
if [ $(echo $(count_commit_files)) -gt $MAX_FILE_LIMIT ]; then
	LARGE_COMMIT_ERR=1
fi

if [ $LARGE_COMMIT_ERR -eq 0 ]; then
	pass "You continue to master the single responsibility principle"
else 
	fail "Your code and/or commits are not modular enough!"
	fail "Why commit more than ${MAX_FILE_LIMIT} files?"
	warn "There is never a healthy reason for this"
fi

echo
return $LARGE_COMMIT_ERR