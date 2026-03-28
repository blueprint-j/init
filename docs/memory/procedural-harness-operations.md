---
last-verified: 2026-03-28
---

# 하네스 운영 절차

## 1. 시작 게이트
- `AGENTS.md`, `docs/agent-rules/agent-protocol.md`, 관련 role guide를 읽는다.
- `docs/plans/active/active_task.md`에 현재 목표와 완료 기준을 채운다.

## 2. 진행 게이트
- 판단, blocker, 새 가정이 생기면 `active_task.md`를 즉시 갱신한다.
- 반복되는 실패 패턴이 드러나면 guide 또는 system patterns 갱신 필요성을 메모한다.

## 3. 기록 게이트
- `docs/plans/completed/`에는 검증 후에만 기록한다.
- 설계 이유가 장기 재사용 가치가 있으면 `docs/design-docs/`에 ADR로 승격한다.

## 4. Reflect 게이트
- durable한 사실만 장기 기억 문서로 올린다.
- 승격이 끝나면 `active_task.md`를 초기화한다.

## 문서 작업 Postflight
```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\docs-audit.ps1
```
