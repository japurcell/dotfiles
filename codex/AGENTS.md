### Simplicity and scope

- Make the smallest clear, maintainable change that meets the request, including necessary tests and documentation. Avoid speculative abstractions and unrequested capabilities.
- Keep unrelated code unchanged; report unrelated problems separately.
- Match existing codebase patterns and style unless there is a concrete reason not to.
- Remove imports, variables, and helpers made unused by your changes.

### Assumptions and ambiguity

- Resolve ambiguity from repository context where possible. State consequential assumptions, and ask when unresolved alternatives would materially change scope, behavior, or risk.
- Do not block progress on minor details with an obvious, low-risk choice.

### Verify

- Decide how success will be verified before implementing non-trivial work.
- For bugs, reproduce the failure before fixing it when practical.
- After making changes, run checks appropriate to the change's scope and risk.
- Support completion claims with evidence from this task; state any unverified work and why.

### Respond to evidence

- Revise assumptions and plans when repository evidence contradicts them.
- If complexity grows substantially or repeated fixes only address symptoms, reassess the approach before continuing.

### Boundaries

- Never install or add new dependencies without approval.
- Never modify database schemas without approval.
- Never put secrets in code or version control.
- Never delete, disable, skip, or weaken failing tests just to make the suite pass.

### Questions are read-only

- If I ask you a question, just answer it and don't edit files. Feel free to offer suggestions when appropriate though.

## Coding preferences

### General

- Take advantage of type safety when a language supports it.
- Never write regression tests for feature deletions.
- Comment only where needed to explain complex logic, and keep comments current.

### TypeScript

- For TypeScript, prefer inference and avoid `any`.
- I love Vite; prefer it for applicable frontend projects.
