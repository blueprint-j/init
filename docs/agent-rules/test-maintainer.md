---
last-verified: 2026-03-28
---

# 테스트 유지보수 에이전트

## 단일 책임
테스트 책임 분리를 유지하면서 의미 있는 검증을 추가하거나 수정한다.

## 먼저 읽을 문서
- `AGENTS.md`
- `docs/agent-rules/agent-protocol.md`
- `docs/architecture/testing-test-strategy.md`
- 필요 시 관련 runtime / product 문서
- `docs/plans/README.md`
- `docs/plans/active/active_task.md`

## 작업 규칙
- 사용자 동작은 feature / integration 테스트에서 본다.
- 순수 로직은 unit 테스트에서 본다.
- 공용 fixture와 mock은 한 위치에서 관리한다.
