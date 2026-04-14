# AGENTS 지도

이 파일은 코딩 AI 에이전트의 최상위 summary layer이자 읽기 지도다. 행동, 기록, SSOT에 관한 공통 계약의 canonical source는 `docs/agent-rules/agent-protocol.md`에 유지한다.

* **스택**: 
* **언어**: `Korean`

## 최우선 안내
- 모든 에이전트는 작업을 시작하기 전, 반드시 `docs/agent-rules/agent-protocol.md`에 명시된 절대 원칙을 최우선으로 숙지한다.
- `AGENTS.md`는 summary layer다. 행동, 기록, SSOT, 사용자 확인 규칙의 원문은 `docs/agent-rules/agent-protocol.md`만 따른다.

## 문서 안내

| 순서 | 경로 | 내용 |
| --- | --- | --- |
| 1 | `docs/agent-rules/agent-protocol.md` | 모든 에이전트가 공통으로 따르는 행동, 구현, 보안, 검증 계약 |
| 2 | `docs/README.md` | `docs/` 전체 축과 라우팅 기준 요약 |
| 3 | `docs/agent-rules/README.md` | 에이전트 규칙 축의 summary layer |
| 4 | `docs/architecture/README.md` | 시스템 구조 지도와 세부 아키텍처 진입점 |
| 5 | `docs/knowledge/README.md` | 프로젝트별 장기 사실, 문서 운영 기준, 제품 기준 진입점 |
| 6 | `docs/memory/index.md` | live agent state 구조 안내 |
| 7 | `docs/memory/runtime/context.md` | 현재 작업 status, 목표, 완료 기준, blocker |
| 8 | `docs/memory/runtime/dailylog.md` | 시계열 작업 로그와 판단 기록 |

## 작업 유형별 빠른 경로

| 작업 | 먼저 읽을 문서 |
| --- | --- |
| 문서 구조 / AI 운영 규칙 수정 | `docs/agent-rules/agent-protocol.md` → `docs/knowledge/documentation-reference.md` → `docs/memory/index.md` |
| 문서 / 코드 drift 점검 | `docs/knowledge/documentation-reference.md` → `docs/README.md` |
| 코드 구조 설계 / 구현 청사진 작성 | `docs/architecture/README.md` → `docs/knowledge/product-reference.md` |
| 기능 흐름 추적 / 코드 조사 | `docs/architecture/README.md` → `docs/knowledge/product-reference.md` |
| 버그 재현 / 디버깅 | `docs/architecture/testing-test-strategy.md` → `docs/memory/runtime/context.md` |
| 런타임 / 백엔드 변경 | `docs/architecture/README.md` → `docs/architecture/runtime-config-and-services.md` → `docs/knowledge/product-reference.md` |
| CLI / 산출물 / publish 문서 수정 | `docs/knowledge/product-reference.md` → `docs/knowledge/documentation-reference.md` |
| 도메인 모듈 추가 / 변경 | `docs/architecture/README.md` → `docs/knowledge/product-reference.md` |
| 테스트 작성 / 수정 | `docs/architecture/testing-test-strategy.md` |
