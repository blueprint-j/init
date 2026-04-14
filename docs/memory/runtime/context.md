# 작업 컨텍스트

## Current Task
- 저장소의 실제 구조를 반영한 `docs/` 문서 하네스를 생성하고 초기화한다.

## Completion Criteria
- `AGENTS.md`와 `docs/` 4축 기본 트리가 실제 경로 기준으로 생성된다.
- summary layer 문서가 읽기 순서와 경계만 안내한다.
- canonical 문서가 현재 저장소의 확인된 사실과 `TODO(project-specific)`를 구분한다.
- `docs/memory/runtime/context.md`와 `docs/memory/runtime/dailylog.md`가 현재 작업과 현재 세션 기준으로 채워진다.

## References
- `README.md`
- `Prompt/init.md`
- `Prompt/meta harness.md`
- 루트 디렉터리 구조 탐색 결과

## Decisions
- 현재 저장소를 실행 애플리케이션이 아닌 문서 하네스 템플릿 저장소로 문서화한다.
- 실행 런타임, 설정, 테스트 도구가 확인되지 않은 항목은 얇게 기록하고 필요 시 `TODO(project-specific)`로 남긴다.
- optional add-on 문서는 코드베이스 근거가 없으므로 기본 생성하지 않는다.

## Next Steps
- 생성한 문서 트리와 참조 경로를 검증했고, 이후 세션은 `AGENTS.md`부터 읽어 재진입하면 된다.

## Status
- completed
