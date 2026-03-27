---
last-verified: {{LAST_VERIFIED}}
---

# 작업 기억

작업 기억은 현재 세션에서 즉시 필요한 목표와 판단을 보관하는 계층이다.

## Canonical Source
* `docs/plans/active/active_task.md`

## 포함할 내용
* 현재 목표
* 완료 기준
* 확인한 사실과 바뀐 판단
* 막힌 부분과 다음 시도
* 바로 참고해야 할 관련 문서

## 종료 규칙
* durable한 내용만 `completed/`, ADR, 장기 기억 문서로 승격한다.
* 승격이 끝나면 `active_task.md`를 비운다.
