#!/usr/bin/env bash

set -euo pipefail

# User-specific parameters
SAVE_PATH=data/ssl4eo-l-60
START_INDEX=0
END_INDEX=10

# Generic parameters
SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
RES=60
SIZE=264
NUM_CITIES=10000
STD=50

time python3 "$SCRIPT_DIR/sample_ssl4eo.py" \
    --save-path "$SAVE_PATH" \
    --size $(($RES * $SIZE / 2)) \
    --num-cities $NUM_CITIES \
    --std $STD \
    --indices-range $START_INDEX $END_INDEX
