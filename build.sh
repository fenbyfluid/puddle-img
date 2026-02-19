#!/bin/bash

set -eu

dir=$(dirname "$(readlink -e "${BASH_SOURCE[0]}")")
IGTOP="$dir/rpi-image-gen"

exec "$IGTOP/rpi-image-gen" build -S "$dir" -c puddle-img.yaml
