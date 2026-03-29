# Init 문서 하네스 템플릿

이 폴더는 다른 저장소로 복사해 시작할 수 있는 범용 문서 하네스 템플릿이다. 구조는 `agent-rules`, `architecture`, `knowledge`, `memory/runtime` 네 축으로 정리되어 있다.

## 포함 범위
- `AGENTS.md`
- `docs/agent-rules/`, `docs/architecture/`, `docs/knowledge/`, `docs/memory/runtime/`
- `docs/agent-rules/doc-hygiene/docs-audit.ps1`

## 적용 순서
1. 이 폴더 내부 파일과 폴더를 대상 저장소 루트로 복사한다.
2. 현재 프로젝트에 맞지 않는 guide나 참조 문서를 줄인다.
3. 안정적인 구조, 사용자 노출 정책, 장기 용어만 `docs/architecture/`와 `docs/knowledge/`에 채운다.
4. 현재 작업 상태는 `docs/memory/runtime/context.md`와 `docs/memory/runtime/dailylog.md`로 관리한다.
5. 아래 명령으로 live docs gate를 점검한다.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\docs\agent-rules\doc-hygiene\docs-audit.ps1
```

템플릿을 현재 저장소 안의 `init/` 경로에서 바로 검증할 때는 아래 명령을 사용한다.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\init\docs\agent-rules\doc-hygiene\docs-audit.ps1 -RootPath .\init
```

## 운영 원칙
- canonical behavior는 `docs/agent-rules/`에만 둔다.
- 내부 구조는 `docs/architecture/`, 사용자 노출 기준과 장기 결정은 `docs/knowledge/`에 둔다.
- `docs/memory/runtime/`은 현재 작업을 위한 live state 계층이며, durable한 사실의 저장소가 아니다.
