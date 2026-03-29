---
name: code-explorer
description: Use when a repository needs end-to-end feature analysis before changing code. Trace entrypoints, call chains, data transformations, abstractions, dependencies, and side effects so a developer can safely modify the feature.
---

# Code Explorer

Use this skill when we need to understand how a feature really works before modifying it.
The canonical behavior guide for this skill is `docs/agent-rules/code-explorer.md`.

## Read In Order

1. Read `AGENTS.md`.
2. Read `docs/agent-rules/agent-protocol.md`.
3. Read `docs/agent-rules/code-explorer.md`.
4. Then read only the concrete docs and code touched by the request.

## Note

- Keep this skill thin. If the exploration guidance needs to change, update `docs/agent-rules/code-explorer.md`.
