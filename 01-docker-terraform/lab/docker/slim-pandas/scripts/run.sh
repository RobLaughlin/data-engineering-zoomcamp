#!/usr/bin/env bash
set -e

docker run \
    -it \
    --rm \
    test:pandas "$@"
