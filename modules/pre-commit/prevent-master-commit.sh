#!/bin/sh

h2 "Protect the master"

MASTER_ERROR=0
branch=`git symbolic-ref HEAD`
if [ $branch == "refs/heads/master" ]; then
    fail "The master is untouchable"
    MASTER_ERROR=1
else
	pass "The master is safe"
fi

echo
return $MASTER_ERROR