# Commands

Custom slash commands invoked with `/command-name`.

## Format

Each command is a markdown file with YAML frontmatter:

```markdown
---
description: Brief description shown in command list
allowed-tools: Bash(git:*), Read, Grep  # Optional: comma-separated tool restrictions
---

# Command Instructions

Your task is to: $ARGUMENTS

## Steps
1. First do this
2. Then do that

## Variables Available
- $ARGUMENTS - All arguments as single string
- $1, $2, $3 - Individual positional arguments
```

## Inline Bash

You can embed bash commands that run before Claude sees the prompt:

```markdown
Current branch: !`git branch --show-current`
Recent commits: !`git log --oneline -5`
```

## Usage

```bash
/command-name arg1 arg2
```

## Examples

- `onboard.md` - Deep task exploration
- `pr-review.md` - PR review workflow
- `pr-summary.md` - Generate PR description from git diff
