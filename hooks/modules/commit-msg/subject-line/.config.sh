#!/bin/sh
SUBJECT_LINE_MODULES_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

SUBJECT_LINE_MODULES="subject-line-min.sh subject-line-max.sh subject-line-capitalise.sh subject-line-period.sh subject-line-verb.sh"

SUBJECT_LINE_MIN_LEN=8
SUBJECT_LINE_MAX_LEN=50

SUBJECT_LINE_VERB="fix refactor create add update change modify retrieve remove delete release merge revert"