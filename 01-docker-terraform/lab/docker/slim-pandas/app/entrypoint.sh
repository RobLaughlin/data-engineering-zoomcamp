#!/usr/bin/env bash
set -e

echo "--PYTHON INFO--"
uv run which python
uv run python -V
echo ""

echo "--UV INFO--"
which uv
uv version
echo ""

uv run python pipeline.py "$@"
echo ""

echo "--OUTPUTS DIR CONTENTS--"
ls outputs/