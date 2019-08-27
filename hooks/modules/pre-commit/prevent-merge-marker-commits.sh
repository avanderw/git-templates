#!/bin/sh

h2 "Merge markers (Mogwai)"

MERGE_MARKER_ERROR=0
commit_files=$(git diff-index --name-only --diff-filter=ACM --cached HEAD --)
for file in ${commit_files}; do
  if egrep -rls "^<<<<<<< |^>>>>>>> |^======= $" "${REPO_DIR}/${file}" >/dev/null; then
    fail "Cleanup: ${file}"
    MERGE_MARKER_ERROR=1
  fi
done

if [ $MERGE_MARKER_ERROR -eq 0 ]; then
  pass "With Mogwai, comes much responsibility"
else
  p "There just might be a gremlin in your house!"
fi

echo
return $MERGE_MARKER_ERROR
