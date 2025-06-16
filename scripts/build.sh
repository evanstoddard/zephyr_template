#!/bin/bash

# Get path to scripts directory
g_SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Source common shell script
source ${g_SCRIPT_DIR}/common.sh

# Bail early on error
set -e

function build() {
    pushd ${DEFAULT_PROJECT_DIRECTORY}
    west build -b ${DEFAULT_PROJECT_BOARD} ${DEFAULT_PROJECT_TARGET} -d ${g_ROOT_DIR}/${DEFAULT_PROJECT_BUILD_DIR} $@
    popd
}

function main() {
    activate_virtual_env
    ${g_SCRIPT_DIR}/init_project.sh
    build $@
}

main $@
