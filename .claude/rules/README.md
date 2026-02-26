# Rules

Modular instruction documents for specific coding standards and conventions.

## Purpose

Rules are optional markdown files that provide targeted guidance on specific aspects of your codebase. Unlike skills (which are loaded on-demand), rules can be configured to apply based on file path patterns.

## Format

Simple markdown files with no required frontmatter:

```markdown
# Rule Title

## Overview
Brief description of what this rule covers.

## Standards
- Standard 1
- Standard 2

## Examples

### Good
```typescript
// Good example
```

### Bad
```typescript
// Bad example
```
```

## Configuration

Rules can be applied based on file paths in `settings.json`:

```json
{
  "rules": [
    {
      "paths": ["src/**/*.ts", "src/**/*.tsx"],
      "ruleFiles": [".claude/rules/typescript-style.md"]
    },
    {
      "paths": ["src/components/**/*"],
      "ruleFiles": [".claude/rules/react-patterns.md"]
    }
  ]
}
```

## When to Use Rules vs Skills

**Use Rules when:**
- You have strict coding standards that apply to specific file patterns
- You want guidance to always be present for certain files
- The guidance is prescriptive (do/don't)

**Use Skills when:**
- Knowledge is domain-specific and should be loaded on-demand
- Patterns are contextual (depends on what you're building)
- You want Claude to decide when to apply the knowledge

## Examples

- `code-style.md` - General code style guidelines
- `security.md` - Security best practices
- `typescript-strict.md` - TypeScript strict mode rules
