# Agents

AI assistants with focused purposes and their own system prompts.

## Format

Each agent is a markdown file with YAML frontmatter:

```markdown
---
name: agent-name
description: What this agent does and when to use it
model: opus  # Optional: sonnet, opus, or haiku
tools: Read, Write, Bash  # Optional: comma-separated tool list
---

# Agent System Prompt

You are a specialized assistant for...

## Your Process
1. Step one
2. Step two

## Guidelines
- Guideline 1
- Guideline 2
```

## Usage

Agents are invoked by Claude Code when their description matches the task context.

## Examples

- `code-reviewer.md` - Comprehensive code review with checklist
- `github-workflow.md` - Git commit, branch, and PR workflows
