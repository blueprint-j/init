# Init 문서 하네스 템플릿

이 저장소는 다른 프로젝트에 복사해 시작할 수 있는 문서 하네스 템플릿이다. 적용 대상 저장소에 맞게 필요한 문서만 남기고, 자리표시자 수준의 문서는 과감히 줄이는 것을 기본값으로 둔다.

## 포함 범위
- `AGENTS.md`
- `docs/agent-rules/`, `docs/architecture/`, `docs/knowledge/`, `docs/memory/runtime/`
- `docs/agent-rules/doc-hygiene/docs-audit.ps1`

## 적용 순서
1. 이 폴더 내부 파일과 폴더를 대상 저장소 루트로 복사한다.
2. 현재 프로젝트에 맞지 않는 guide와 참조 문서를 바로 삭제하거나 병합한다.
3. 내부 구조는 `docs/architecture/`, 사용자 노출 정책과 장기 기준은 `docs/knowledge/`에 채운다.
4. 현재 작업 상태는 `docs/memory/runtime/context.md`와 `docs/memory/runtime/dailylog.md`로 관리한다.
5. 아래 명령으로 live docs gate를 점검한다.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\docs\agent-rules\doc-hygiene\docs-audit.ps1
```

템플릿을 현재 저장소 안의 `init/` 경로에서 바로 검증할 때는 아래 명령을 사용한다.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\init\docs\agent-rules\doc-hygiene\docs-audit.ps1 -RootPath .\init
```

세부 운영 기준은 `AGENTS.md`와 각 canonical 문서를 따른다.
