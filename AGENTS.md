# AGENTS 지도

이 파일은 코딩 AI 에이전트의 최상위 summary layer이자 읽기 지도다. 행동, 기록, SSOT에 관한 공통 계약의 canonical source는 `docs/agent-rules/agent-protocol.md`에 유지한다.

* **스택**: `Markdown`, `Git`
* **언어**: `Korean`

## 최우선 안내
- 모든 에이전트는 작업을 시작하기 전 `docs/agent-rules/agent-protocol.md`를 먼저 읽는다.
- `AGENTS.md`는 summary layer다. 행동, 기록, SSOT, 사용자 확인 규칙의 원문은 `docs/agent-rules/agent-protocol.md`만 따른다.
- 현재 작업 재진입이 필요하면 `docs/memory/runtime/context.md`와 `docs/memory/runtime/dailylog.md`를 함께 확인한다.

## 4축 경계
- `docs/agent-rules/`: 에이전트 공통 행동 규칙과 작업 프로토콜. 시작 문서 `docs/agent-rules/README.md`
- `docs/architecture/`: 저장소 내부 구조, 파일 연결, 테스트 구조. 시작 문서 `docs/architecture/README.md`
- `docs/knowledge/`: 장기 정책, 문서 운영 기준, 사용자 표면 기준. 시작 문서 `docs/knowledge/README.md`
- `docs/memory/runtime/`: 현재 작업 상태와 현재 세션 로그. 시작 문서 `docs/memory/index.md`

## 문서 안내
| 순서 | 경로 | 내용 |
| --- | --- | --- |
| 1 | `docs/agent-rules/agent-protocol.md` | 모든 에이전트가 공통으로 따르는 행동, 구현, 보안, 검증 계약 |
| 2 | `docs/README.md` | `docs/` 전체 축과 라우팅 기준 요약 |
| 3 | `docs/agent-rules/README.md` | 에이전트 규칙 축의 summary layer |
| 4 | `docs/architecture/README.md` | 저장소 구조 지도와 세부 아키텍처 진입점 |
| 5 | `docs/knowledge/README.md` | 장기 지식과 문서 운영 기준 진입점 |
| 6 | `docs/memory/index.md` | live runtime memory 구조 안내 |
| 7 | `docs/memory/runtime/context.md` | 현재 작업 상태, 목표, 완료 기준, blocker |
| 8 | `docs/memory/runtime/dailylog.md` | 현재 세션 기준의 짧은 작업 로그 |
