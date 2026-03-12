#!/bin/bash

set -eu

dir=$(dirname "$(readlink -e "${BASH_SOURCE[0]}")")
IGTOP="$dir/rpi-image-gen"

BUILD_RESCUE=0
for arg in "$@"; do
  if [ "$arg" = "-r" ] || [ "$arg" = "--build-rescue" ]; then
    BUILD_RESCUE=1
  fi
done

# The build gets quite large, avoid a tmpfs /tmp/
mkdir -p "$dir/work/tmp/"
export TMPDIR="$dir/work/tmp/"

"$IGTOP/rpi-image-gen" build -S "$dir" -c puddle-img.yaml

if [ "$BUILD_RESCUE" -eq "1" ]; then
  "$IGTOP/rpi-image-gen" build -S "$dir" -c puddle-rescue.yaml
fi
