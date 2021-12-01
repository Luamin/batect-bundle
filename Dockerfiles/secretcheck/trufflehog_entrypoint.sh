#! /bin/bash

set -euo pipefail

SINCE_COMMIT=${SINCE_COMMIT:-}

trufflehog --regex \
    --entropy=False \
    --since_commit "$SINCE_COMMIT" \
    .