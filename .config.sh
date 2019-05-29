#!/bin/sh

# Colors
RED=`printf '\033[1;31m'`
GREEN=`printf '\033[1;32m'`
WHITE=`printf '\033[1;97m'`
GREY=`printf '\033[1;37m'`

# Icons
CHECK=`printf ${GREEN}'✔'${WHITE}`
CROSS=`printf ${RED}'✘'${WHITE}`

REPO_DIR=$(git rev-parse --show-toplevel)

# Modules
MODULES_PATH="${SCRIPT_PATH}/modules"
. "${MODULES_PATH}/.config.sh"

# Helpers
HELPERS_PATH="${SCRIPT_PATH}/helpers"
. "${HELPERS_PATH}/.config.sh"