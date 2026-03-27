# 기억 구조 지도

AI 에이전트의 기억을 파일시스템 우선 구조로 관리하기 위한 진입 문서다.
`AGENTS.md`는 최상위 지도이고, 실제 기억은 `docs/` 아래 canonical source에 저장한다.

## 핵심 규칙 / 결정 기준
* 기억은 작업 기억, 의미론적 기억, 일화적 기억, 절차적 기억으로 나눠 저장한다.
* 새 정보는 가장 구체적인 기존 문서에 먼저 넣고, 기존 폴더로 설명되지 않는 교차 관심사만 `docs/memory/`에 둔다.
* 장기 설계 이유는 `docs/design-docs/`에 남기고, 현재 작업 상태는 `docs/plans/active/active_task.md`에 남긴다.

## 기억 계층

| 기억 유형 | 역할 | 기본 저장 위치 |
| --- | --- | --- |
| 작업 기억 | 현재 스레드의 목표, 진행 상황, 막힌 점 | `docs/plans/active/active_task.md` |
| 의미론적 기억 | 안정적인 사실, 제약, 구조, 정책 | `docs/agent-rules/`, `docs/architecture/`, `docs/product/`, `docs/design-docs/` |
| 일화적 기억 | 과거 작업, 버그 해결 과정, 검증 이력 | `docs/plans/completed/`, `docs/memory/` |
| 절차적 기억 | 반복 가능한 실행 절차와 체크리스트 | `docs/agent-rules/agent-protocol.md`, `docs/memory/procedural-*.md` |

## 관련 문서
* [working-memory.md](working-memory.md)
* [procedural-harness-operations.md](procedural-harness-operations.md)
* [memory-bank-systemPatterns.md](memory-bank-systemPatterns.md)
