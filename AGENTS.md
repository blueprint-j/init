# AGENTS Map

이 파일은 `{{PROJECT_NAME}}`용 코딩 AI 에이전트의 최상위 지도이자 핵심 운영 계약이다.
세부 사실과 장기 규칙은 `docs/` 아래 canonical source에 유지한다.

* **프로젝트**: `{{PROJECT_SUMMARY}}`
* **스택**: `{{STACK_SUMMARY}}`
* **언어**: `{{PRIMARY_LANGUAGE}}`

## 절대 원칙
1. 작업 전 최소 필요한 문서를 반드시 이 순서로 읽는다: `agent-rules -> 관련 architecture/product -> plans`.
2. 작업 중 판단, 가설, 진행 상태는 `docs/plans/active/active_task.md`에 수시로 기록한다.
3. 장기 규칙, 구조 지식, 정책 등은 `docs/` 안의 단일 문서에만 기록한다.
4. 문서 간 내용이 충돌하거나 해석에 따라 결과가 달라질 수 있으면 임의 판단 대신 사용자 확인을 구한다.
5. 작업 종료 시 `docs/plans/README.md` 기준으로 durable한 내용을 `docs/plans/completed/YYYY-MM.md`에 보관하고, `docs/plans/active/active_task.md`는 초기화한다.

## 문서 안내

| 순서 | 경로 | 내용 |
| --- | --- | --- |
| 1 | `docs/agent-rules/agent-protocol.md` | 행동, 구현, 보안, 검증 원칙 |
| 2 | `docs/architecture/index.md` | 시스템 구조 지도와 세부 아키텍처 진입점 |
| 3 | `docs/product/index.md` | 사용자 노출 동작, 화면, 정책 진입점 |
| 4 | `docs/design-docs/README.md` | ADR 규칙과 설계 결정 배경 |
| 5 | `docs/plans/README.md` | active/completed 운영 규칙 |
| 6 | `docs/plans/active/active_task.md` | 현재 작업 상태 |

## 작업 유형별 빠른 경로

| 작업 | 먼저 읽을 문서 |
| --- | --- |
| 런타임/백엔드 변경 | `docs/architecture/runtime-and-data.md` |
| 페이지/UI 변경 | `docs/product/surfaces.md` |
| 정책/플랫폼 규칙 변경 | `docs/product/policies.md` |
| 테스트 추가/수정 | `docs/architecture/testing-strategy.md` |
| 문서/하네스 구조 변경 | `docs/design-docs/README.md` → `docs/memory/index.md` |

## 커스터마이즈 메모
- `{{RUNTIME_PATHS}}`
- `{{MAIN_SURFACES}}`
- `{{GUARDED_PATHS}}`
- `{{TEST_COMMANDS}}`
