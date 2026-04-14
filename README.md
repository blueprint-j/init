# Init 문서 하네스 템플릿

이 저장소는 다른 프로젝트에 복사해 시작할 수 있는 문서 하네스 템플릿이다. 적용 대상 저장소에 맞게 필요한 문서만 남기고, 자리표시자 수준의 문서는 과감히 줄이는 것을 기본값으로 둔다.

## 포함 범위
- `AGENTS.md`
- `docs/agent-rules/`, `docs/architecture/`, `docs/knowledge/`, `docs/memory/runtime/`
- `Prompt/init.md`

## 기본 구조
- `docs/agent-rules/`는 기본적으로 `agent-protocol.md` 중심의 얇은 규칙 축으로 유지한다.
- `docs/architecture/`는 기본적으로 요청 흐름, 설정/서비스 wiring, 테스트 전략 문서만 포함한다.
- 역할별 guide, 로컬 skill 폴더, docs audit script, SEO, domain module, repository/query 세부 문서는 기본 포함 대상이 아니다.
- 프로젝트에 실제 필요가 생길 때만 optional add-on으로 추가한다.

## 적용 순서
1. 이 폴더 내부 파일과 폴더를 대상 저장소 루트로 복사한다.
2. `Prompt/init.md`를 기준으로 코드베이스를 먼저 탐색하고, 실제 구조에 맞는 문서만 남긴다.
3. 현재 프로젝트에 맞지 않는 참조 문서나 placeholder를 바로 삭제하거나 병합한다.
4. 내부 구조는 `docs/architecture/`, 사용자 노출 정책과 장기 기준은 `docs/knowledge/`에 채운다.
5. 현재 작업 상태는 `docs/memory/runtime/context.md`와 `docs/memory/runtime/dailylog.md`로 관리한다.

## Optional Add-on
필요 시에만 아래 항목을 추가한다.

- 프로젝트 특화 role guide
- 프로젝트 특화 `.agents/skills/`

세부 운영 기준은 `AGENTS.md`와 각 canonical 문서를 따른다.
