#!/bin/sh

h2 "Prevent merge marker commits"

MERGE_MARKER_ERROR=0
for file in $(commit_files); do
    if egrep -rls "^<<<<<<< |^>>>>>>> |^======= $" "${REPO_DIR}/${file}" >/dev/null; then
    	fail "${file}"
    	MERGE_MARKER_ERROR=1
    fi
done

if [ $MERGE_MARKER_ERROR -eq 0 ]; then
	pass "No merge markers found"
fi

echo
return $MERGE_MARKER_ERROR