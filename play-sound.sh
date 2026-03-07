#!/usr/bin/env bash
# Plays a sound file in the background. Never blocks, never fails.
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SOUND_FILE="$SCRIPT_DIR/sounds/$1"

# Detect OS and use appropriate audio player
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    afplay "$SOUND_FILE" &
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux - choose player based on file extension
    if [[ "$1" == *.mp3 ]]; then
        # For MP3 files, use mpg123 or ffplay (aplay doesn't handle MP3 well)
        if command -v mpg123 &> /dev/null; then
            mpg123 -q "$SOUND_FILE" &
        elif command -v ffplay &> /dev/null; then
            ffplay -nodisp -autoexit -loglevel quiet "$SOUND_FILE" &
        elif command -v paplay &> /dev/null; then
            paplay "$SOUND_FILE" &
        fi
    else
        # For WAV and other formats, prefer aplay or paplay
        if command -v aplay &> /dev/null; then
            aplay -q "$SOUND_FILE" &
        elif command -v paplay &> /dev/null; then
            paplay "$SOUND_FILE" &
        elif command -v ffplay &> /dev/null; then
            ffplay -nodisp -autoexit -loglevel quiet "$SOUND_FILE" &
        fi
    fi
fi

exit 0
