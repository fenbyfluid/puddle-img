#!/bin/bash

set -eu

dir=$(dirname "$(readlink -e "${BASH_SOURCE[0]}")")
IGTOP="$dir/rpi-image-gen"

exec "$IGTOP/install_deps.sh" "${dir}/depends" "$@"
