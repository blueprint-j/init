# AI 에이전트 규칙 지도

## 사용 원칙
- 모든 작업에서 `AGENTS.md` 다음으로 `agent-protocol.md`를 읽는다.
- 그 다음에는 작업의 1차 책임에 맞는 role guide 한 개를 먼저 읽고, 교차 책임이 있을 때만 다른 guide를 추가로 읽는다.
- 같은 에이전트의 행동 규칙을 여러 Markdown 파일에 나눠 적지 않는다.
- role guide가 `architecture`, `product`, `plans`와 충돌하면 더 구체적인 canonical source를 우선한다.

## 공통 계약
- [agent-protocol.md](agent-protocol.md)

## 역할별 단일 Guide
- [doc-hygiene.md](doc-hygiene.md)
- [doc-code-drift.md](doc-code-drift.md)
- [code-architect.md](code-architect.md)
- [code-explorer.md](code-explorer.md)
- [codebase-reviewer.md](codebase-reviewer.md)
- [debugger.md](debugger.md)
- [runtime-maintainer.md](runtime-maintainer.md)
- [test-maintainer.md](test-maintainer.md)
- [surface-maintainer.md](surface-maintainer.md)
- [domain-module-maintainer.md](domain-module-maintainer.md)

## 운영 규칙
- 반복되는 실패 패턴이 보이면 관련 guide 하나를 갱신하거나 `docs/memory/memory-bank-systemPatterns.md`에 패턴을 추가한다.
- 새 guide를 추가할 때는 단일 책임, 먼저 읽을 문서, 함께 읽을 canonical source가 한 번에 보여야 한다.
