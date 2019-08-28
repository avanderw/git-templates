#!/bin/sh

h2 "prevent-merge-marker-commits.sh"
info "Prevent commits that contain any of the following:"
info "  ${YELLOW}<<<<<<<${GREY}"
info "  ${YELLOW}=======${GREY}"
info "  ${YELLOW}>>>>>>>${GREY}"

commit_files=$(git diff-index --name-only --diff-filter=ACM --cached HEAD --)
for file in ${commit_files}; do
  if egrep -rls "^<<<<<<< |^>>>>>>> |^======= $" "${REPO_DIR}/${file}" >/dev/null; then
    fail "Cleanup: ${file}"
    info "There just might be a gremlin in your house!"
    return 1
  fi
done

pass "No merge markers found"
