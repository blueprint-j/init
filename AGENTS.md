# AGENTS 지도

이 파일은 `docs/` 구조의 최상위 계약이다. 상세 규칙과 장기 지식은 가장 구체적인 canonical source 한 곳에만 둔다.

## 기본 계약
1. 작업 전 최소 필요한 문서를 `agent-rules -> 관련 architecture -> 관련 knowledge -> memory/runtime` 순서로 읽는다.
2. 현재 작업 상태는 `docs/memory/runtime/context.md`, 짧은 진행 로그는 `docs/memory/runtime/dailylog.md`에만 둔다.
3. 장기 규칙, 구조, 정책은 `docs/agent-rules/`, `docs/architecture/`, `docs/knowledge/`의 단일 문서에만 기록한다.
4. 문서 간 충돌이나 해석에 따라 결과가 크게 달라질 수 있으면 사용자 확인 없이 임의 판단하지 않는다.
5. 작업 종료 시 durable한 결과는 해당 canonical 문서로 승격하고, `docs/memory/runtime/`은 가볍게 정리한다.

## 문서 경계

| 축 | 소유하는 것 | 소유하지 않는 것 |
| --- | --- | --- |
| `docs/agent-rules/` | 에이전트 행동 규칙, 작업 절차, 검증 기준 | 프로젝트 구조 설명, 사용자 노출 정책, 현재 작업 로그 |
| `docs/architecture/` | 내부 계층 구조, runtime wiring, 데이터 흐름, 테스트 구조 | 사용자 표면 정책, 장기 용어집, 현재 작업 상태 |
| `docs/knowledge/` | 사용자 노출 정책, 문서 운영 기준, 장기 결정 | 내부 wiring 세부, 일회성 조사 로그, 진행 중 메모 |
| `docs/memory/runtime/` | 현재 목표, 가정, blocker, 짧은 진행 로그 | durable한 규칙, 구조, 정책, 장기 기록 |

새 내용을 어디에 둘지 애매하면 먼저 장기 사실인지 판단한다. 장기 사실이 아니면 `docs/memory/runtime/`, 장기 사실이면 가장 구체적인 축의 단일 문서로 보낸다.

## 읽기 순서

| 순서 | 경로 | 역할 |
| --- | --- | --- |
| 1 | `docs/agent-rules/README.md` | 에이전트 규칙 진입점 |
| 2 | `docs/agent-rules/agent-protocol.md` | 공통 행동 계약 |
| 3 | `docs/agent-rules/skill-routing.md` | 전체 스킬 라우팅 요약 |
| 4 | `docs/architecture/README.md` | 내부 구조 지도 |
| 5 | `docs/knowledge/README.md` | 장기 참조 지식 진입점 |
| 6 | `docs/memory/index.md` | runtime memory 운영 원칙 |
| 7 | `docs/memory/runtime/context.md` | 현재 작업 상태 |

## 작업 유형별 빠른 경로

| 작업 | 먼저 읽을 문서 |
| --- | --- |
| 문서 구조 / AI 운영 규칙 수정 | `docs/agent-rules/agent-protocol.md` → `docs/knowledge/documentation-reference.md` → `docs/memory/index.md` |
| 내부 구조 파악 / 변경 | `docs/agent-rules/agent-protocol.md` → `docs/architecture/index.md` |
| 사용자 노출 정책 / 장기 기준 확인 | `docs/agent-rules/agent-protocol.md` → `docs/knowledge/README.md` |
| 테스트 전략 확인 | `docs/agent-rules/agent-protocol.md` → `docs/architecture/testing-test-strategy.md` |
