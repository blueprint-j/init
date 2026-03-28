---
last-verified: 2026-03-28
---

# 0002. 문서 중심 AI 하네스 적응

## 문제
외부 memory-bank 또는 harness 구조를 그대로 복제하면 기존 문서 체계와 병렬 SSOT가 생길 수 있다.

## 결정
- `AGENTS.md`는 짧은 계약 문서로 유지한다.
- 공통 계약과 역할별 guide는 `docs/agent-rules/`에서 관리한다.
- active 작업 상태는 `docs/plans/active/active_task.md` 하나로 유지한다.
- `docs/memory/memory-bank-*.md`는 pointer layer로만 유지한다.
- 로컬 감사 게이트는 `scripts/docs-audit.ps1`로 제공한다.

## 영향
- 문서 하네스의 진입점과 운영 절차가 하나의 트리 안에서 정렬된다.
- live docs와 archive docs를 다르게 다뤄 drift와 과잉 수정 위험을 줄인다.
