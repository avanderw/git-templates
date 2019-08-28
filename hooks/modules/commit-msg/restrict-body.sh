#!/bin/sh

h2 "restrict-body.sh"
info "Ensure body wraps at ${BLUE}${body_wrap} characters${GREY}"

BODY_ERR=0

max_line_length=0
current_line=0
while read -r line; do
  current_line=$(($current_line + 1))
  line_length=${#line}
  first_char=${line:0:1}
  if [ "${first_char}" != "#" ]; then
    if [ $line_length -gt $body_wrap ]; then
      fail "Line $current_line: $line"
      BODY_ERR=1
    fi

    if [ $max_line_length -lt $line_length ]; then
      max_line_length=$line_length
    fi
  fi
done <<<"$1"

if [ $BODY_ERR -eq 1 ]; then
  info "Max line length in the body is ${RED}${max_line_length} characters${GREY}"
  fail "Wrap the body at ${BLUE}${body_wrap} characters${GREY}"
else
  info "Max line length in the body is ${GREEN}${max_line_length} characters${GREY}"
  pass "Take care of your body. It's the only place you have to live"
fi

return $BODY_ERR
