#!/bin/sh

# Colors
RED=`printf '\033[1;31m'`
GREEN=`printf '\033[1;32m'`
YELLOW=`printf '\033[1;33m'`
WHITE=`printf '\033[1;97m'`
GREY=`printf '\033[1;37m'`

# Icons
CHECK=`printf ${GREEN}'✔'${WHITE}`
CROSS=`printf ${RED}'✘'${WHITE}`
EXCLAMATION=`printf ${YELLOW}'!'${WHITE}`

REPO_DIR=$(git rev-parse --show-toplevel)

. "${SCRIPT_PATH}/helpers/CONFIG.sh"
. "${SCRIPT_PATH}/modules/CONFIG.sh"

