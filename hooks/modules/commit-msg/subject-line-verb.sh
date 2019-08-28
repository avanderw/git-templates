#!/bin/sh

h2 "subject-line-verb.sh"
info "The subject should start in the imperative mood"
info "The first word is restricted to provide consistency"

first_word=$(echo $1 | (awk '{print $1}'))
word_found=0
for verb in ${SUBJECT_LINE_VERB}; do
  if [ "${first_word,,}" = "${verb,,}" ]; then
    word_found=1
  fi
done

if [ $word_found -eq 1 ]; then
  pass "A meaningful first word was used"
  return 0
else
  warn "Unknown first word used in subject"
  info "Please use one of the following words:"
  info "  '${SUBJECT_LINE_VERB}'"

  if [ "${subject_line_verb}" = "ENABLED" ]; then
    info "This rule has been enabled"
    fail "You are prevented from making this commit"
    return 1
  else
    info "This rule has been disabled"
    pass "You may use any word you choose"
    return 0
  fi
fi

