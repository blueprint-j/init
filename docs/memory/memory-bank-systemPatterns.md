---
last-verified: 2026-03-28
---

# System Patterns

## Pattern 1: Thin Entrypoint, Thick Assembly
Bad Example:
Entrypoint가 validation, query 조립, view data 생성을 모두 직접 수행한다.

Good Example:
Entrypoint는 흐름 제어만 맡고, service, builder, factory, repository가 실제 조립을 담당한다.

## Pattern 2: Summary Layer Stays Thin
Bad Example:
`AGENTS.md`나 `memory-bank-*.md`가 canonical policy를 다시 풀어쓴다.

Good Example:
summary 문서는 포인터만 남기고, 가장 구체적인 canonical source를 갱신한다.

## Pattern 3: Active Task Gets Closed Cleanly
Bad Example:
작업이 끝난 뒤에도 `active_task.md`에 stale 목표와 메모가 남아 있다.

Good Example:
durable한 내용만 승격하고, active를 빈 슬롯으로 되돌린다.
