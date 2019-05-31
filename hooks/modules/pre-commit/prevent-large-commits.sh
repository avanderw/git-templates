#!/bin/sh

h2 "Commit size"

LARGE_COMMIT_ERR=0
MAX_FILE_LIMIT=32
if $(count_commit_files) -gt $MAX_FILE_LIMIT; then
	LARGE_COMMIT_ERR=1
fi

if [ $LARGE_COMMIT_ERR -eq 0 ]; then
	pass "You continue to master the single responsibility principle"
else 
	fail "Your code and/or commits are not modular enough, why commit more than ${MAX_FILE_LIMIT} files?"
	p "There is never a healthy reason for this"
fi

echo
return $LARGE_COMMIT_ERR