---
last-verified: {{LAST_VERIFIED}}
---

# 0001. AI 문서 구조 분리

## 문제
루트 `AGENTS.md` 하나에 규칙과 맥락이 모두 들어가면 AI 에이전트가 필요한 정보만 빠르게 읽기 어렵고, 작업 메모리와 장기 규칙이 섞인다.

## 결정
* `AGENTS.md`는 읽기 순서와 문서 위치만 담는 지도 문서로 유지한다.
* 실제 작업 지식은 `docs/agent-rules`, `docs/architecture`, `docs/product`, `docs/plans`, `docs/design-docs`, `docs/memory`로 분리한다.
* `README.md`는 사람용 문서로 유지하고, AI는 `AGENTS.md`를 진입점으로 사용한다.

## 영향
* 장기 규칙과 현재 작업 상태를 분리할 수 있다.
* AI는 필요한 문서만 부분적으로 읽고 작업할 수 있다.
* 기능 변경 시 코드와 함께 관련 `docs/`를 갱신해야 한다.
