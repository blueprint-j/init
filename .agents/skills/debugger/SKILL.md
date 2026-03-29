---
name: debugger
description: Use when debugging runtime errors, failing tests, regressions, or unexpected behavior. Reproduce the issue first, trace the execution path, apply a minimal fix, and verify the result.
---

# Debugger

Use this skill when a bug needs reproduction, analysis, and verification.
The canonical behavior guide for this skill is `docs/agent-rules/debugger.md`.

## Read In Order

1. Read `AGENTS.md`.
2. Read `docs/agent-rules/agent-protocol.md`.
3. Read `docs/agent-rules/debugger.md`.
4. Then read only the concrete docs, code, tests, and logs touched by the issue.

## Note

- Keep this skill thin. If the debugging guidance needs to change, update `docs/agent-rules/debugger.md`.
