#!/bin/sh

h2 "Subject line"

firstLine=`echo "${1}" | head -1`
RESTRICT_SUBJECT_LINE_ERR=0
for module in ${SUBJECT_LINE_MODULES}; do
    CURR_MODULE="${SUBJECT_LINE_MODULES_PATH}/$module"
    [ ! -e ${CURR_MODULE} ] && continue
    . "${CURR_MODULE}" "$firstLine"
    if [ $? -eq 1 ] ; then
        RESTRICT_SUBJECT_LINE_ERR=1
    fi
done

if [ ${RESTRICT_SUBJECT_LINE_ERR} -eq 0 ]; then
	pass "Just right!"
else
	fail "Give your subject meaning!"
	p "If applied, this commit will ${YELLOW}<your subject line here>!"
fi

echo
return $RESTRICT_SUBJECT_LINE_ERR