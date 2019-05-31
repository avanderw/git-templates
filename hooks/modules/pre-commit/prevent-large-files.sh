#!/bin/sh

hard_limit=65536
soft_limit=32768

list_new_or_modified_files()
{
    git diff --staged --name-status|sed -e '/^D/ d; /^D/! s/.\s\+//'
}

unmunge()
{
    local result="${1#\"}"
    result="${result%\"}"
    env echo -e "$result"
}

check_file_size()
{
	n=0
    while read -r munged_filename
    do
        f="$(unmunge "$munged_filename")"
        h=$(git ls-files -s "$f"|cut -d' ' -f 2)
        s=$(git cat-file -s "$h")
        if [ "$s" -gt $hard_limit ]
        then
			fail "[$s bytes] ${munged_filename}"
            n=$((n+1))
        elif [ "$s" -gt $soft_limit ]
        then
            warn "[$s bytes] ${munged_filename}"
        fi
    done

    #[ $n -eq 0 ]
	exit $n
}

h2 "Discriminate against large files"

list_new_or_modified_files | check_file_size
if [ $? -ne 0 ]; then
	p "Why are your files larger than $hard_limit?"
	echo
    return 1
fi

pass "Your house maintains discipline"
echo
return 0