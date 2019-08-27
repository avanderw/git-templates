#!/bin/sh

h2 "Commit size"

LARGE_COMMIT_ERR=0
WARN_FILE_LIMIT=8
MAX_FILE_LIMIT=16
committed_filecount=$(git diff-index --name-only --diff-filter=ACM --cached HEAD -- | wc -w | tr -d ' ')

p "You committed $committed_filecount files"
if [ "$committed_filecount" -lt $WARN_FILE_LIMIT ]; then
	pass "You continue to master the single responsibility principle"
elif [ "$committed_filecount" -lt $MAX_FILE_LIMIT ]; then
	warn "This commit is a bit bloated"
else
	LARGE_COMMIT_ERR=1
	fail "Why commit more than ${MAX_FILE_LIMIT} files?"
	fail "Your commits are not modular enough!"
	p "There is never a healthy reason for this"
fi 

echo
return $LARGE_COMMIT_ERR