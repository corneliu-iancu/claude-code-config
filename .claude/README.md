# Claude Code Configuration

This directory contains Claude Code configuration for this project.

## Structure

- `agents/` - AI assistants with focused purposes
- `commands/` - Slash commands (`/command-name`)
- `hooks/` - Hook scripts that run at specific events
- `skills/` - Domain knowledge documents
- `rules/` - Modular instructions (optional)
- `settings.json` - Main configuration file (hooks, environment, permissions)
- `settings.local.json` - Personal overrides (gitignored)
- `settings.md` - Human-readable hook documentation
- `CLAUDE.md` - Project memory (alternative location)

## Files

### settings.json
Main configuration file defining:
- Hooks (PreToolUse, PostToolUse, UserPromptSubmit, Stop)
- Environment variables
- Permissions
- Enabled plugins

### settings.local.json (gitignored)
Personal overrides for local development. Never committed to git.

### CLAUDE.md
Project memory that loads automatically at session start. Can also be placed in project root.

## Getting Started

1. Review `settings.json` to understand configured hooks
2. Explore `skills/` for project-specific knowledge
3. Check `commands/` for available slash commands
4. See `agents/` for specialized AI assistants
