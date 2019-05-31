#!/bin/sh

##
# Get a list of files that will be committed by extension
# For example:
#
#     "$(commit_files js css)" 
#
# to get a list of js and css files that will be commited
commit_files() {
	if [ $# -eq 0 ]; then
	    echo $(git diff-index --name-only --diff-filter=ACM --cached HEAD --)
	    exit 0
	fi

	extensions=''
	for extension in "$@"
	do
		extensions="${extensions}(${extension})|"
	done
	regex="\.(${extensions%?})$"
	echo $(git diff-index --name-only --diff-filter=ACM --cached HEAD -- | grep -E "$regex")
}

count_commit_files() {
	echo $(commit_files $@) | wc -w | tr -d ' '
}