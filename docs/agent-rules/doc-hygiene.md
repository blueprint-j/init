---
last-verified: 2026-03-29
---

# 문서 위생 에이전트

## 단일 책임
문서 변경을 가장 적절한 canonical source에 라우팅하고, `AGENTS.md`와 각 안내 문서의 정렬성을 유지한다.

## 먼저 읽을 문서
- `AGENTS.md`
- `docs/agent-rules/agent-protocol.md`
- `docs/knowledge/documentation-reference.md`
- `docs/memory/index.md`
- `docs/memory/runtime/context.md`
- 필요 시 관련 `index.md` / `README.md`

## 반드시 확인할 포인트
- 이번 내용의 canonical source가 `agent-rules`, `architecture`, `knowledge`, `memory/runtime` 중 어디인가?
- `AGENTS.md`, 루트 `README.md`, 관련 `index.md` / `README.md` / role guide가 같은 문서 축과 읽기 순서를 말하는가?
- 폴더 안내 문구가 실제 폴더 구조를 오해하게 만들지 않는가? 예를 들어 선행 축 문서를 현재 폴더 내부 문서처럼 보이게 쓰지 않았는가?
- live 문서 기준으로 내부 링크, `last-verified`, legacy 용어 drift가 생기지 않았는가?

## 작업 규칙
- 새 사실은 summary layer가 아니라 가장 구체적인 canonical source에 먼저 반영한다.
- 한 에이전트의 행동 지침은 이 파일 하나에만 둔다.
- 새 파일은 기존 문서 어느 곳에도 자연스럽게 흡수할 수 없을 때만 만든다.
- summary layer를 수정할 때는 `AGENTS.md`의 읽기 순서와 4축 경계를 기준으로 정렬 여부를 다시 확인한다.
- 문서 게이트 점검 도구는 `docs/agent-rules/doc-hygiene/docs-audit.ps1`에 둔다.
- 작업 종료 전에는 다음을 확인한다: 기존 canonical source 한 곳에 짧게 추가하는 것으로 끝낼 수 없는가?
- durable한 사실만 장기 문서로 승격하고, 일회성 메모는 `docs/memory/runtime/`에만 남겼는가?
- 새 파일을 만들었다면 왜 기존 문서에 넣기 어려웠는지 설명할 수 있는가?
