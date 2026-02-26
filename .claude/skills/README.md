# Skills

Domain knowledge documents that teach Claude project-specific patterns and conventions.

## Structure

Each skill is a directory containing a `SKILL.md` file:

```
skills/
├── testing-patterns/
│   └── SKILL.md
├── react-ui-patterns/
│   └── SKILL.md
└── graphql-schema/
    └── SKILL.md
```

## SKILL.md Format

```markdown
---
name: skill-name
description: What this skill does and when to use it. Include keywords users would mention.
allowed-tools: Read, Grep, Glob  # Optional: comma-separated tool restrictions
model: claude-sonnet-4-20250514  # Optional: specific model
---

# Skill Title

## When to Use
- Trigger condition 1
- Trigger condition 2

## Core Patterns

### Pattern Name
```typescript
// Example code
```

## Anti-Patterns

### What NOT to Do
```typescript
// Bad example
```

## Integration
- Related skill: other-skill
```

## Frontmatter Fields

| Field | Required | Max Length | Description |
|-------|----------|------------|-------------|
| `name` | Yes | 64 chars | Lowercase letters, numbers, hyphens only. Must match directory name. |
| `description` | Yes | 1024 chars | What the skill does and when to use it. Claude uses semantic matching on this. |
| `allowed-tools` | No | - | Comma-separated list of tools Claude can use. |
| `model` | No | - | Specific model to use for this skill. |

## Best Practices

1. **Keep SKILL.md focused** - Under 500 lines; put detailed docs in separate referenced files
2. **Write trigger-rich descriptions** - Claude uses semantic matching on descriptions to decide when to apply skills
3. **Include examples** - Show both good and bad patterns with code
4. **Reference other skills** - Show how skills work together
5. **Use exact filename** - Must be `SKILL.md` (case-sensitive)

## Examples

- `testing-patterns/` - TDD workflow, factory functions, mocking
- `react-ui-patterns/` - Loading states, error handling, empty states
- `graphql-schema/` - Queries, mutations, codegen patterns
