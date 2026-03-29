---
name: runtime-maintainer
description: Use when config, controllers, services, repositories, registries, or shared runtime wiring changes. Review thin entrypoint boundaries, explicit wiring, runtime contracts, and required test and documentation sync after backend edits.
---

# Runtime Maintainer

Use this skill after runtime or backend edits.
The canonical behavior guide for this skill is `docs/agent-rules/runtime-maintainer.md`.

## Read In Order

1. Read `AGENTS.md`.
2. Read `docs/agent-rules/agent-protocol.md`.
3. Read `docs/agent-rules/runtime-maintainer.md`.
4. Then read only the concrete runtime docs and code touched by the request.

## Note

- Keep this skill thin. If the maintenance guidance needs to change, update `docs/agent-rules/runtime-maintainer.md`.
