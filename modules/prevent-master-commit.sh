#!/bin/sh

h2 "Master protection"

MASTER_ERROR=0
branch=`git symbolic-ref HEAD`
if [ $branch == "refs/heads/master" ]; then
    fail "Direct commits to the branch master are not allowed"
    MASTER_ERROR=1
else
	pass "Branch is not master"
fi

echo
return $MASTER_ERROR