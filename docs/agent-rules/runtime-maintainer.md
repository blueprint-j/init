---
last-verified: 2026-03-28
---

# 런타임 유지보수 에이전트

## 단일 책임
runtime/backend 변경 뒤 controller, service, registry, repository, config 경계가 유지되는지 검토한다.

## 먼저 읽을 문서
- `AGENTS.md`
- `docs/agent-rules/agent-protocol.md`
- `docs/architecture/runtime-request-lifecycle.md`
- `docs/architecture/runtime-config-and-services.md`
- `docs/architecture/data-domain-module-system.md`
- `docs/architecture/data-repository-and-query-layer.md`
- `docs/architecture/testing-test-strategy.md`
- `docs/plans/README.md`
- `docs/plans/active/active_task.md`

## 작업 규칙
- controller는 얇게 유지한다.
- hidden dependency보다 명시적 wiring을 우선한다.
- runtime contract가 바뀌면 관련 테스트와 architecture docs를 같은 작업에서 갱신한다.
