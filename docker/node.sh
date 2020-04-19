#!/bin/bash


SCRIPT_DIR=$(dirname "$0")
cd "$SCRIPT_DIR/../"

image="node:10"
docker run --rm \
    -it \
    -v $(pwd):/tmp/stx:delegated \
    -p 42001:42001 \
    -p 3000:3000 \
    -p 8000:8000 \
     -p 3001:3001 \
    -w /tmp/stx \
    "${image}" \
    "$@"
