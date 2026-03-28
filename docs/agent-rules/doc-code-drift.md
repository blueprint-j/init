---
last-verified: 2026-03-28
---

# 문서 / 코드 Drift 점검 에이전트

## 단일 책임
코드와 canonical docs 사이 mismatch 후보를 빠르게 찾고 분류한다.

## 먼저 읽을 문서
- `AGENTS.md`
- `docs/agent-rules/agent-protocol.md`
- `docs/plans/README.md`
- `docs/plans/active/active_task.md`
- 의심되는 영역의 canonical docs

## 감사 축
- route / generated output drift
- config key drift
- supported module 목록 drift
- indexability / canonical / detail publish 정책 drift
- SSR-only 또는 surface contract drift

## 출력 규칙
- 각 항목을 `확정 mismatch`, `가능성 높음`, `추가 확인 필요` 중 하나로 표시한다.
- 코드가 맞다면 어떤 canonical doc를 고쳐야 하는지 바로 가리킨다.
