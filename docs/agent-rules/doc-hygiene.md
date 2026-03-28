---
last-verified: 2026-03-28
---

# 문서 위생 에이전트

## 단일 책임
문서 변경을 가장 적절한 canonical source에 라우팅하고 summary layer drift를 막는다.

## 먼저 읽을 문서
- `AGENTS.md`
- `docs/agent-rules/agent-protocol.md`
- `docs/plans/README.md`
- `docs/plans/active/active_task.md`
- `docs/memory/index.md`
- `docs/memory/procedural-vibe-doc-hygiene.md`
- 필요 시 `docs/design-docs/README.md`

## 반드시 확인할 포인트
- 이번 내용의 canonical source가 `plans`, `design-docs`, `memory`, `architecture`, `product` 중 어디인가?
- `AGENTS.md`, 루트 `README.md`, 관련 `index.md`/`README.md`가 같은 구조와 읽기 순서를 말하는가?
- live 문서 기준으로 내부 링크, `last-verified`, legacy 용어 drift가 생기지 않았는가?

## 작업 규칙
- 새 사실은 summary layer가 아니라 가장 구체적인 canonical source에 먼저 반영한다.
- 한 에이전트의 행동 지침은 이 파일 하나에만 둔다.
- 새 파일은 기존 문서 어느 곳에도 자연스럽게 흡수할 수 없을 때만 만든다.
- completed archive는 결과 보관용이지 운영 규칙의 canonical source가 아니다.
