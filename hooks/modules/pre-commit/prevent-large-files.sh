#!/bin/sh

hard_limit=65536
soft_limit=32768

check_file_size()
{
	n=0
    while read -r filename
    do
        filesize=`[[ -e $filename ]] && stat --printf=%s $filename || echo 0`
        if [ "$filesize" -gt $hard_limit ]
        then
			fail "[$filesize bytes] ${filename}"
            n=$((n+1))
        elif [ "$filesize" -gt $soft_limit ]
        then
            warn "[$filesize bytes] ${filename}"
        fi
    done

	exit $n
}

h2 "Discriminate against large files"

git diff --staged --name-only | check_file_size
if [ $? -ne 0 ]; then
	p "Why are your files larger than $hard_limit?"
	echo
    return 1
fi

pass "Your house maintains discipline"
echo
return 0