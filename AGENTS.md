# AGENTS 지도

이 파일은 이 저장소의 문서 읽기 순서와 경계만 안내하는 summary layer다. 행동 규칙의 canonical source는 `docs/agent-rules/agent-protocol.md`다.

## 최우선 원칙
- 작업 시작 전 `docs/agent-rules/agent-protocol.md`를 먼저 읽는다.
- `AGENTS.md`는 규칙 본문을 반복하지 않는다.
- 현재 작업 상태는 `docs/memory/runtime/context.md`, 짧은 진행 로그는 `docs/memory/runtime/dailylog.md`에만 둔다.

## docs 구조

| 축 | 소유 범위 | 시작 문서 |
| --- | --- | --- |
| `docs/agent-rules/` | 에이전트 행동 규칙, 승인 기준, 검증 계약 | `docs/agent-rules/README.md` |
| `docs/architecture/` | 내부 구조, 요청 흐름, 설정과 서비스 wiring, 테스트 경계 | `docs/architecture/README.md` |
| `docs/knowledge/` | 사용자 노출 기준, 문서 운영 기준, 장기 참조 사실 | `docs/knowledge/README.md` |
| `docs/memory/` | 현재 작업의 live state와 임시 로그 | `docs/memory/index.md` |

`docs/README.md`는 이 네 축을 한 번에 보는 최상위 지도다.

## 기본 읽기 순서
1. `docs/agent-rules/agent-protocol.md`
2. `docs/README.md`
3. 작업과 직접 관련된 축의 시작 문서
4. 현재 작업이면 `docs/memory/runtime/context.md`

## 작업별 빠른 경로

| 작업 | 먼저 읽을 문서 |
| --- | --- |
| 문서 구조 / 운영 규칙 정리 | `docs/README.md` → `docs/knowledge/documentation-reference.md` |
| 내부 구조 파악 / 변경 | `docs/architecture/README.md` |
| 요청 흐름 추적 | `docs/architecture/runtime-request-lifecycle.md` |
| 설정 / 서비스 wiring 확인 | `docs/architecture/runtime-config-and-services.md` |
| 테스트 기준 확인 | `docs/architecture/testing-test-strategy.md` |
| 사용자 노출 기준 확인 | `docs/knowledge/product-reference.md` |
| 현재 작업 상태 확인 | `docs/memory/runtime/context.md` |
