#!/bin/sh
PRE_COMMIT_MODULES_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PRE_COMMIT_MODULES="prevent-master-commit.sh prevent-merge-marker-commits.sh prevent-large-files.sh"