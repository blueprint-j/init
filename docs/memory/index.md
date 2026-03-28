# 기억 구조 지도

AI 에이전트의 기억을 파일시스템 우선 구조로 관리하기 위한 진입 문서다.
`AGENTS.md`는 최상위 지도이고, 실제 기억은 `docs/` 아래 canonical source에 저장한다.

## 핵심 규칙 / 결정 기준
- 기억은 작업 기억, 의미론적 기억, 일화적 기억, 절차적 기억으로 나눠 저장한다.
- 새 정보는 가장 구체적인 기존 문서에 먼저 넣고, 교차 관심사만 `docs/memory/`에 둔다.
- 관찰, 가정, 결정은 분리해서 적는다.
- 장기 설계 이유는 `docs/design-docs/`에, 현재 작업 상태는 `docs/plans/active/active_task.md`에 남긴다.
- `docs/memory/memory-bank-*.md`는 pointer layer만 유지한다.

## 읽기 순서
- 일반 구현 작업: `AGENTS.md` → `docs/agent-rules/agent-protocol.md` → 관련 role guide → 관련 `docs/architecture/` 또는 `docs/product/` → `docs/plans/active/active_task.md`
- AI 운영 규칙 / 문서 구조 작업: 위 순서에 `docs/agent-rules/README.md`, `docs/memory/index.md`, `docs/design-docs/README.md`를 추가한다.

## 관련 문서
- [memory-bank-README.md](memory-bank-README.md)
- [memory-bank-systemPatterns.md](memory-bank-systemPatterns.md)
- [working-memory.md](working-memory.md)
- [semantic-glossary.md](semantic-glossary.md)
- [semantic-project-facts.md](semantic-project-facts.md)
- [procedural-harness-operations.md](procedural-harness-operations.md)
- [procedural-vibe-doc-hygiene.md](procedural-vibe-doc-hygiene.md)
- [retain-recall-reflect.md](retain-recall-reflect.md)
