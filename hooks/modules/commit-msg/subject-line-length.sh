#!/bin/sh
h2 "subject-line-length.sh"
info "Restrict the subject line to have a minimum length of ${BLUE}${SUBJECT_LINE_MIN_LEN} characters${GREY}"
info "Restrict the subject to be less than ${BLUE}${SUBJECT_LINE_MAX_LEN} characters${GREY}"
info "Warn when the subject line is more than ${BLUE}${SUBJECT_LINE_SOFT_MAX} characters${GREY}"

first_line=$(echo "${1}" | head -1)

if [ ${#first_line} -lt $SUBJECT_LINE_MIN_LEN ]; then
  info "Subject length is ${RED}${#first_line} characters${GREY}"
  fail "Subject length is too short"
  return 1
else
  info "Length is not too short"
  if [ ${#first_line} -le $SUBJECT_LINE_SOFT_MAX ]; then
    info "Subject length is ${GREEN}${#first_line} characters${GREY}"
    pass "Length is just right"
    return 0
  fi

  if [ ${#first_line} -le $SUBJECT_LINE_MAX_LEN ]; then
    info "Subject length is ${YELLOW}${#first_line} characters${GREY}"
    warn "Length is a tad long"
    return 0
  fi

  info "Subject length is ${RED}${#first_line} characters${GREY}"
  fail "Length is just too long"
  return 1
fi
