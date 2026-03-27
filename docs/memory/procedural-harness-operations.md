---
last-verified: {{LAST_VERIFIED}}
---

# 하네스 운영 절차

## 1. 시작 게이트
* `AGENTS.md`와 관련 `docs/agent-rules/`, `docs/architecture/`, `docs/product/`를 읽는다.
* `docs/plans/active/active_task.md`에 현재 목표와 완료 기준을 채운다.

## 2. 진행 게이트
* 판단, blocker, 새 가정이 생기면 `active_task.md`를 즉시 갱신한다.
* 반복되는 실수나 애매함이 드러나면 규칙 문서 또는 패턴 문서 갱신 필요성을 메모한다.

## 3. 기록 게이트
* `docs/plans/completed/`에는 diff 검토와 관련 검증 후에만 기록한다.
* 검증이 불가능하면 `미검증`으로 분리한다.
* 설계 이유가 장기 재사용 가치가 있으면 `docs/design-docs/`에 ADR로 승격한다.

## 4. Reflect 게이트
* 이번 작업에서 얻은 durable한 사실만 장기 기억 문서로 올린다.
* 반복 절차는 `docs/memory/procedural-*.md`에 남긴다.
* 장기 보관이 끝나면 `active_task.md`를 빈 슬롯으로 되돌린다.
