#!/usr/bin/env bash
set -e

echo "--PYTHON VERSION--"
python -V

echo ""
python pipeline.py "$@"
echo ""

echo "--OUTPUTS DIR CONTENTS--"
ls outputs/