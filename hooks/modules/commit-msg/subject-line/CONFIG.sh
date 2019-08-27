#!/bin/sh
SUBJECT_LINE_MODULES_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

SUBJECT_LINE_MODULES="subject-line-length.sh subject-line-capitalise.sh subject-line-period.sh subject-line-verb.sh"

SUBJECT_LINE_MIN_LEN=8
SUBJECT_LINE_SOFT_MAX=50
SUBJECT_LINE_MAX_LEN=70

SUBJECT_LINE_VERB="fix refactor add update change remove delete merge revert enable disable enhance setup release"
