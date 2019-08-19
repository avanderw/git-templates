#!/bin/sh

h2 "Commit size"

LARGE_COMMIT_ERR=0
WARN_FILE_LIMIT=8
MAX_FILE_LIMIT=16
FILE_COUNT=$(echo $(count_commit_files))
p "You committed $FILE_COUNT files"
if [ $FILE_COUNT -lt $WARN_FILE_LIMIT ]; then
	pass "You continue to master the single responsibility principle"
elif [ $FILE_COUNT -lt $MAX_FILE_LIMIT ]; then
	warn "This commit is a bit bloated"
else
	LARGE_COMMIT_ERR=1
	fail "Why commit more than ${MAX_FILE_LIMIT} files?"
	fail "Your commits are not modular enough!"
	p "There is never a healthy reason for this"
fi 

echo
return $LARGE_COMMIT_ERR