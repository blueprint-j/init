# docs 안내

`docs/`는 이 저장소의 durable 문서와 live runtime memory를 4축으로 분리해 관리하는 진입점이다. 상세 정책은 각 축의 canonical source에서 읽고, 이 문서는 경계와 라우팅만 안내한다.

## 4축 경계
- `docs/agent-rules/`: 에이전트 공통 행동 규칙과 작업 프로토콜
- `docs/architecture/`: 저장소 내부 구조, 파일 간 연결, 테스트 구조
- `docs/knowledge/`: 장기 지식, 사용자 표면 기준, 문서 운영 기준
- `docs/memory/runtime/`: 현재 작업 상태와 현재 세션 로그

## 라우팅 기준
- 에이전트 행동 규칙이 필요하면 `docs/agent-rules/agent-protocol.md`를 읽는다.
- 저장소 구조와 파일 연결을 파악하려면 `docs/architecture/README.md`부터 읽는다.
- 장기 정책이나 문서 운영 기준은 `docs/knowledge/README.md`부터 읽는다.
- 현재 작업을 이어받을 때만 `docs/memory/index.md`와 `docs/memory/runtime/`을 읽는다.

## 기본 읽기 순서
1. `docs/agent-rules/agent-protocol.md`
2. `docs/README.md`
3. 관련 축의 시작 문서
4. 현재 작업이면 `docs/memory/runtime/context.md`
