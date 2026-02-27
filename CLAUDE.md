# Claude Code Config

Personal global Claude Code setup: sound notifications + automatic session notes via AWS Bedrock.

## Structure

```
install.sh                          # Merges hooks into ~/.claude/settings.json
settings-template.json              # Hook definitions (reference copy)
play-sound.sh                       # afplay wrapper
sounds/                             # heart-beat.mp3, cinematic-boom.wav, cash-register.mp3
.claude/hooks/
  session-notes-wrapper.sh          # Captures stdin, backgrounds Python
  session-notes.py                  # Parses transcript, calls Bedrock
  session-notes.conf.json           # notes_path, model_id, enabled, etc.
```

## How Install Works

`install.sh` deep-merges hook definitions into `~/.claude/settings.json` using `jq`. Hook commands reference this repo by absolute path.

## Hook Events

- **Notification** / **Stop** / **TaskCompleted** — play sounds via `play-sound.sh`
- **SessionEnd** — runs `session-notes-wrapper.sh` to summarize the conversation
