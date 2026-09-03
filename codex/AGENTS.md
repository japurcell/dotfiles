# Codex Instructions

## Universal Rules

### Keep it simple

- Follow you-aint-gonna-need-it (YAGNI) principles to keep things as simple as possible.
- My teammates and I will be reviewing the code you write, so please make it easy to read and understand.

### Verify

- There should NEVER be secrets in code or version control.

### Boundaries

- Never install or add new dependencies without approval.
- Never modify database schemas without approval.
- Never commit secrets.
- Never delete, disable, skip, or weaken failing tests just to make the suite pass.

### Questions are read-only

- If I ask you a question, just answer it and don't edit files. Feel free to offer suggestions when appropriate though.

## Coding preferences

### General

- Take advantage of type safety when a language supports it.
- Never write regression tests for feature deletions.
- Use comments sparingly and only when necessary to explain complex logic.
- Keep comments up to date with code changes.

### TypeScript

- `any` is the enemy; inferred types are our friend.
- Write idiomatic, type-safe TypeScript that Matt Pocock would be proud of.
- I love Vite; prefer it for applicable frontend projects.
