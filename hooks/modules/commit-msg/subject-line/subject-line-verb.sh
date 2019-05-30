#!/bin/sh

FIRST_WORD=$(echo $1 | (awk '{print $1}'))

FIRST_WORD_ERR=1
for VERB in ${SUBJECT_LINE_VERB}; do
    if [ "${FIRST_WORD,,}" = "${VERB,,}" ]; then
		FIRST_WORD_ERR=0
	fi
done

if [ $FIRST_WORD_ERR -eq 0 ]; then
	pass "Meaningful first word"
else
	fail "Insignificant first word..."
	p "Meaningful words: ${SUBJECT_LINE_VERB}"
fi

return $FIRST_WORD_ERR