# AGENTS 지도

이 파일은 `{{PROJECT_NAME}}`용 코딩 AI 에이전트의 최상위 지도이자 핵심 운영 계약이다. 세부 지식은 `docs/` 아래 canonical source에 유지한다.

* **스택**: `{{PRIMARY_STACK}}`
* **도메인 모듈**: `{{DOMAIN_MODULES}}`
* **언어**: `{{DOCUMENT_LANGUAGE}}`

## 절대 원칙
1. 작업 전 최소 필요한 문서를 반드시 이 순서로 읽는다: `agent-rules -> 관련 architecture/product -> plans`.
2. 작업 중 판단, 가설, 진행 상태는 `docs/plans/active/active_task.md`에 수시로 기록한다.
3. 장기 규칙, 구조 지식, 정책은 `docs/` 내부의 단일 문서에만 기록한다. 다른 문서에는 원문 위치 링크만 둔다.
4. 문서 간 내용이 충돌하거나 요구사항 해석에 따라 결과가 크게 달라질 수 있으면 임의 판단 없이 사용자 확인을 요청한다.
5. 작업 종료 시 영향 받은 `docs/`를 최신 기준으로 맞추고, `docs/plans/README.md` 기준에 따라 durable한 내용을 `docs/plans/completed/YYYY-MM.md`에 보관한 뒤 `active_task.md`를 초기화한다.
6. `docs/` 아래 `.md` 문서는 특별한 사유가 없으면 `{{DOCUMENT_LANGUAGE}}`로 작성한다. 코드, 경로, 설정 키, 식별자는 원문 표기를 유지한다.

## 문서 안내

| 순서 | 경로 | 내용 |
| --- | --- | --- |
| 1 | `docs/agent-rules/README.md` | 에이전트 역할 지도와 역할별 단일 guide 진입점 |
| 2 | `docs/agent-rules/agent-protocol.md` | 모든 에이전트가 공통으로 따르는 행동, 구현, 보안, 검증 계약 |
| 3 | `docs/architecture/index.md` | 시스템 구조 지도와 세부 아키텍처 진입점 |
| 4 | `docs/product/index.md` | 사용자 노출 동작, 데이터 계약, 정책 진입점 |
| 5 | `docs/design-docs/README.md` | ADR 규칙과 설계 결정 배경 |
| 6 | `docs/plans/README.md` | active/completed/tech debt 운영 규칙 |
| 7 | `docs/plans/active/active_task.md` | 현재 작업 상태 |

## 작업 유형별 빠른 경로

| 작업 | 먼저 읽을 문서 |
| --- | --- |
| 문서 구조 / AI 운영 규칙 수정 | `docs/agent-rules/doc-hygiene.md` → `docs/memory/index.md` |
| 문서 / 코드 drift 점검 | `docs/agent-rules/doc-code-drift.md` |
| 코드 구조 설계 / 구현 청사진 작성 | `docs/agent-rules/code-architect.md` → `docs/architecture/index.md` → `docs/product/index.md` |
| 기능 흐름 추적 / 코드 조사 | `docs/agent-rules/code-explorer.md` → `docs/architecture/index.md` → `docs/product/index.md` |
| 버그 재현 / 디버깅 | `docs/agent-rules/debugger.md` → `docs/architecture/testing-test-strategy.md` |
| 런타임 / 백엔드 변경 | `docs/agent-rules/runtime-maintainer.md` → `docs/architecture/index.md` |
| 사용자 표면 / UI / SEO / 산출물 수정 | `docs/agent-rules/surface-maintainer.md` → `docs/product/index.md` |
| 도메인 모듈 추가 / 변경 | `docs/agent-rules/domain-module-maintainer.md` → `docs/architecture/data-adding-a-domain-module.md` |
| 테스트 작성 / 수정 | `docs/agent-rules/test-maintainer.md` → `docs/architecture/testing-test-strategy.md` |
