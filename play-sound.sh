#!/usr/bin/env bash
# Plays a sound file in the background. Never blocks, never fails.
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
afplay "$SCRIPT_DIR/sounds/$1" &
exit 0
