#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LAB_DIR="$(cd "$SCRIPT_DIR/../../.." && pwd)"

docker build \
  -f "$LAB_DIR/docker/slim-pandas/Dockerfile" \
  -t test:pandas \
  "$LAB_DIR"