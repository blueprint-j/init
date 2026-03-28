# Init 문서 하네스 템플릿

이 폴더는 다른 저장소로 복사해 시작할 수 있는 범용 문서 하네스 템플릿이다.

## 포함 범위
- `AGENTS.md`
- `docs/` 기억, 계획, 설계, canonical guide 구조
- `.agents/skills/` thin wrapper skills
- `scripts/docs-audit.ps1`

## 적용 순서
1. `init/` 내부 파일과 폴더를 대상 저장소 루트로 복사한다.
2. `{{UPPER_SNAKE_CASE}}` placeholder를 프로젝트 사실로 치환한다.
3. `docs/architecture/`, `docs/product/`의 skeleton 문서를 해당 프로젝트 기준으로 보강한다.
4. 필요 없는 optional guide나 skill이 있으면 삭제한다.
5. 아래 명령으로 live docs gate를 점검한다.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\docs-audit.ps1
```

템플릿을 현재 저장소 안의 `init/` 경로에서 바로 검증할 때는 아래 명령을 사용한다.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\init\scripts\docs-audit.ps1 -RootPath .\init
```

## 권장 placeholder 치환 순서
1. `{{PROJECT_NAME}}`
2. `{{PRIMARY_STACK}}`
3. `{{DOMAIN_MODULES}}`
4. `{{DOCUMENT_LANGUAGE}}`
5. `{{RUNTIME_PATHS}}`, `{{SURFACE_PATHS}}`, `{{TEST_PATHS}}` 같은 구조별 placeholder

## optional로 제거 가능한 항목
- `docs/agent-rules/surface-maintainer.md`
- `docs/agent-rules/domain-module-maintainer.md`
- `.agents/skills/surface-maintainer/`
- `.agents/skills/domain-module-maintainer/`
- 현재 프로젝트에 불필요한 `docs/product/*`, `docs/architecture/*` placeholder 문서

## 운영 원칙
- skill은 thin wrapper만 두고 canonical behavior는 `docs/agent-rules/`에만 둔다.
- `docs/memory/memory-bank-*.md`는 pointer layer로 유지한다.
- `docs/plans/active/active_task.md`는 단일 shared task spec으로 유지한다.
