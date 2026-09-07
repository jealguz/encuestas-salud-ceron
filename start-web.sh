#!/usr/bin/env bash

set -e

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PYTHON_EXE="$PROJECT_ROOT/.venv/bin/python"

if [ ! -f "$PYTHON_EXE" ]; then
    echo "No existe .venv. Ejecute primero: uv venv .venv --python 3.12"
    exit 1
fi

cd "$PROJECT_ROOT"

"$PYTHON_EXE" run.py
