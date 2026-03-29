---
last-verified: 2026-03-29
---

# System Patterns

## Pattern 1: Thin Entrypoint, Thick Assembly
Bad Example:
Entrypoint가 validation, query 조립, view data 생성을 모두 직접 수행한다.

Good Example:
Entrypoint는 흐름 제어만 맡고, service, builder, factory, repository가 실제 조립을 담당한다.

## Pattern 2: Summary Layer Stays Thin
Bad Example:
`AGENTS.md`나 상위 안내 문서가 canonical policy를 다시 풀어쓴다.

Good Example:
summary 문서는 포인터만 남기고, 가장 구체적인 canonical source를 갱신한다.

## Pattern 3: Runtime Context Stays Disposable
Bad Example:
작업이 끝난 뒤에도 `docs/memory/runtime/context.md`에 stale 목표와 메모가 남아 있다.

Good Example:
durable한 내용만 장기 문서로 승격하고, runtime 문서는 다음 작업을 위한 가벼운 슬롯으로 되돌린다.

## Pattern 4: Durable Outcomes Are Promoted Directly
Bad Example:
완료 기록 archive만 남기고 장기 구조나 정책 문서를 갱신하지 않는다.

Good Example:
구조, 정책, 용어, 패턴 변화는 해당 canonical 문서에 직접 반영한다.
