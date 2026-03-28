---
last-verified: 2026-03-28
---

# 0001. AI 에이전트 기억 구조 도입

## 문제
작업 메모, 장기 사실, 과거 경험, 반복 절차를 어디에 남길지 구분이 없으면 문서가 쉽게 섞이고 drift가 생긴다.

## 결정
- 작업 기억, 의미론적 기억, 일화적 기억, 절차적 기억으로 나눠 관리한다.
- 작업 기억의 canonical source는 `docs/plans/active/active_task.md`로 둔다.
- 장기 사실은 `docs/agent-rules/`, `docs/architecture/`, `docs/product/`, `docs/design-docs/`, `docs/memory/semantic-*.md`에 둔다.
- 절차적 기억은 `docs/agent-rules/agent-protocol.md`와 `docs/memory/procedural-*.md`에 둔다.

## 영향
- 어떤 사실을 어디에 저장해야 하는지 판단 기준이 생긴다.
- summary layer와 canonical source의 책임 경계가 선명해진다.
