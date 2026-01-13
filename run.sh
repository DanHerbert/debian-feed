#!/bin/sh

SCRIPT_DIR=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)

set -e

cd "$SCRIPT_DIR"

if [ ! -d ./venv/ ]; then
    echo 'Missing python /venv/ dir.'
    exit 1
fi

. ./venv/bin/activate

./debian-feed.py ./debian-feed.json

