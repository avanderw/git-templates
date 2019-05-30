#!/bin/sh
MODULES_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

. "${MODULES_PATH}/commit-msg/_config.sh"
. "${MODULES_PATH}/pre-commit/_config.sh"

