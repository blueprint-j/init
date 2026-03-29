# AGENTS 지도

이 파일은 코딩 AI 에이전트의 최상위 지도이자 핵심 운영 계약이다. 세부 규칙과 장기 지식은 `docs/` 아래의 canonical source에 유지한다.

## 절대 원칙
1. 작업 전 최소 필요한 문서를 반드시 이 순서로 읽는다: `agent-rules -> 관련 architecture -> 관련 knowledge -> memory/runtime`.
2. 현재 작업 상태는 `docs/memory/runtime/context.md`에, 짧은 진행 로그는 `docs/memory/runtime/dailylog.md`에 유지한다.
3. 장기 규칙, 구조 지식, 정책은 `docs/agent-rules/`, `docs/architecture/`, `docs/knowledge/` 내부의 단일 문서에만 기록한다.
4. 문서 간 내용이 충돌하거나 요구사항 해석에 따라 결과가 크게 달라질 수 있으면 임의 판단 없이 사용자 확인을 요청한다.
5. 작업 종료 시 durable한 판단과 구조 변경은 해당 canonical 문서로 승격하고, `docs/memory/runtime/`은 다음 작업을 위해 가볍게 정리한다.
6. `docs/` 아래 `.md` 문서는 특별한 사유가 없으면 한국어로 작성한다. 코드, 경로, 설정 키, 식별자는 원문 표기를 유지한다.

## 문서 경계 요약

| 축 | 소유하는 것 | 소유하지 않는 것 |
| --- | --- | --- |
| `docs/agent-rules/` | 에이전트 행동 규칙, 작업 절차, 검증 원칙 | 프로젝트 구조 설명, 사용자 노출 정책, 현재 작업 로그 |
| `docs/architecture/` | 내부 계층 구조, runtime wiring, 데이터 흐름, 테스트 구조 | 사용자 표면 정책, 장기 용어집, 현재 작업 상태 |
| `docs/knowledge/` | 사용자 노출 동작, 장기 결정, 공용 용어, 반복 패턴 | 내부 wiring 세부, 일회성 조사 로그, 진행 중 메모 |
| `docs/memory/runtime/` | 현재 목표, 가정, blocker, 짧은 진행 로그 | durable한 규칙, 구조, 정책, 장기 기록 |

새 내용을 어디에 둘지 애매하면 "이 내용이 다음 작업에서도 참조될 장기 사실인가?"를 먼저 판단한다. 아니면 `memory/runtime`, 맞다면 가장 구체적인 `agent-rules`, `architecture`, `knowledge`로 보낸다.

## 문서 안내

| 순서 | 경로 | 내용 |
| --- | --- | --- |
| 1 | `docs/agent-rules/README.md` | 에이전트 역할 지도와 역할별 단일 guide 진입점 |
| 2 | `docs/agent-rules/agent-protocol.md` | 모든 에이전트가 공통으로 따르는 행동, 구현, 보안, 검증 계약 |
| 3 | `docs/architecture/index.md` | 시스템 구조 지도와 세부 아키텍처 진입점 |
| 4 | `docs/knowledge/README.md` | 장기 참조 지식, 사용자 노출 정책, 용어, 패턴 진입점 |
| 5 | `docs/memory/index.md` | live runtime memory 운영 원칙 |
| 6 | `docs/memory/runtime/context.md` | 현재 작업 상태 |

## 작업 유형별 빠른 경로

| 작업 | 먼저 읽을 문서 |
| --- | --- |
| 문서 구조 / AI 운영 규칙 수정 | `docs/agent-rules/doc-hygiene.md` → `docs/memory/index.md` → `docs/knowledge/README.md` |
| 문서 / 코드 drift 점검 | `docs/agent-rules/doc-code-drift.md` |
| 코드 구조 설계 / 구현 청사진 작성 | `docs/agent-rules/code-architect.md` → `docs/architecture/index.md` → `docs/knowledge/product-reference.md` |
| 기능 흐름 추적 / 코드 조사 | `docs/agent-rules/code-explorer.md` → `docs/architecture/index.md` → `docs/knowledge/product-reference.md` |
| 버그 재현 / 디버깅 | `docs/agent-rules/debugger.md` → `docs/architecture/testing-test-strategy.md` |
| 런타임 / 백엔드 변경 | `docs/agent-rules/runtime-maintainer.md` → `docs/architecture/index.md` |
| 사용자 표면 / UI / SEO / 산출물 수정 | `docs/agent-rules/surface-maintainer.md` → `docs/knowledge/product-reference.md` |
| 도메인 모듈 추가 / 변경 | `docs/agent-rules/domain-module-maintainer.md` → `docs/architecture/data-adding-a-domain-module.md` |
| 테스트 작성 / 수정 | `docs/agent-rules/test-maintainer.md` → `docs/architecture/testing-test-strategy.md` |
