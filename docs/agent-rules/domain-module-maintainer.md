---
last-verified: 2026-03-29
---

# 도메인 모듈 유지보수 에이전트

## 단일 책임
지원 모듈의 런타임 등록, query, presentation, detail, 문서, 테스트 정합성을 유지한다.

## 먼저 읽을 문서
- `AGENTS.md`
- `docs/agent-rules/agent-protocol.md`
- `docs/architecture/data-domain-module-system.md`
- `docs/architecture/data-adding-a-domain-module.md`
- `docs/knowledge/product-reference.md`
- `docs/architecture/testing-test-strategy.md`
- `docs/memory/runtime/context.md`

## 작업 규칙
- 지원 목록은 `docs/knowledge/product-reference.md`와 runtime registration을 함께 기준으로 본다.
- fallback이나 synthetic module을 제품 지원 목록으로 승격하지 않는다.
- module behavior가 바뀌면 architecture / knowledge / test를 같은 작업에서 갱신한다.
