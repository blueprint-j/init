# docs 지도

`docs/`는 네 축으로 나뉜다. 같은 사실은 가장 구체적인 축의 한 문서에만 둔다.

## 폴더 경계

| 폴더 | 다루는 것 | 다루지 않는 것 | 시작 문서 |
| --- | --- | --- | --- |
| `agent-rules/` | 에이전트 행동 규칙, 승인 기준, 검증 계약 | 내부 구조, 제품 정책, 현재 작업 로그 | `agent-rules/README.md` |
| `architecture/` | 내부 계층, 요청 흐름, 설정과 서비스 wiring, 테스트 경계 | 사용자 약속, 장기 운영 정책, 진행 중 메모 | `architecture/README.md` |
| `knowledge/` | 사용자 노출 기준, 문서 운영 기준, 장기 참조 사실 | 구현 세부, 일회성 조사 메모, 현재 blocker | `knowledge/README.md` |
| `memory/` | 현재 작업 목표, 가정, blocker, 짧은 로그 | durable한 규칙, 구조, 정책 | `memory/index.md` |

## 라우팅 기준
- 지금만 필요한 정보면 `docs/memory/`에 둔다.
- 여러 세션에서 다시 볼 사실이면 `docs/agent-rules/`, `docs/architecture/`, `docs/knowledge/` 중 가장 구체적인 축에 둔다.
- summary layer는 위치만 안내하고, 상세 규칙이나 사실은 canonical 문서에만 둔다.

## 기본 읽기 순서
1. `agent-rules/agent-protocol.md`
2. 관련 축의 시작 문서
3. 필요 시 세부 canonical 문서
4. 현재 작업이면 `memory/runtime/context.md`
