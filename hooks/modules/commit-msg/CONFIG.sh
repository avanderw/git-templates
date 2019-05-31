#!/bin/sh
COMMIT_MSG_MODULES_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

. "${COMMIT_MSG_MODULES_PATH}/subject-line/CONFIG.sh"

#COMMIT_MSG_MODULES="restrict-subject-line.sh restrict-body.sh link-issue.sh"
COMMIT_MSG_MODULES="restrict-subject-line.sh restrict-body.sh"
	  
