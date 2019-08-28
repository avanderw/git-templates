#!/bin/sh

check_file_size() {
  info "Checking filesizes ..."
  n=0
  largest=0
  while read -r filename; do
    filesize=$([[ -e $filename ]] && stat --printf=%s "${filename}" || echo 0)
    if [ ${largest} -lt ${filesize} ]; then
      largest=${filesize}
    fi
    if [ "$filesize" -gt "${hard_filesize_limit}" ]; then
      fail "[$filesize bytes] ${filename}"
      n=$((n + 1))
    elif [ "$filesize" -gt "${soft_filesize_limit}" ]; then
      warn "[$filesize bytes] ${filename}"
    fi
  done

  info "The largest filesize is ${GREEN}${largest} bytes${GREY}"
  exit $n
}

h2 "prevent-large-files.sh"
info "Warn when files are larger than ${BLUE}${soft_filesize_limit} bytes${GREY}"
info "Fail when files are larger than ${BLUE}${hard_filesize_limit} bytes${GREY}"

git diff --staged --name-only | check_file_size
if [ $? -ne 0 ]; then
  if [ "${prevent_large_files}" = "ENABLED" ]; then
    info "This rule has been enabled"
    info "Files larger than ${hard_filesize_limit} are not allowed"
    fail "Refactor your code!"
    return 1
  else
    info "This rule has been disabled"
    pass "Your large files are allowed"
    return 0
  fi
fi

pass "You are not committing large files"
