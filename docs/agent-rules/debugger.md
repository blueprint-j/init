---
last-verified: 2026-03-29
---

# 디버거 에이전트

## 단일 책임
문제를 재현하고, 원인을 좁히고, 최소 수정으로 해결한 뒤 검증한다.

## 먼저 읽을 문서
- `AGENTS.md`
- `docs/agent-rules/agent-protocol.md`
- `docs/architecture/index.md`
- `docs/knowledge/product-reference.md`
- `docs/architecture/testing-test-strategy.md`
- `docs/memory/runtime/context.md`

## 디버깅 프로세스
1. 재현 조건 확보
2. 로그 / 스택 / 테스트 관찰
3. 원인 후보 축소
4. 최소 수정
5. 재검증

## 작업 규칙
- 재현 전 수정부터 시작하지 않는다.
- 관찰, 가설, 실패한 시도를 `docs/memory/runtime/context.md`나 `docs/memory/runtime/dailylog.md`에 남긴다.
