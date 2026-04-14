# Runtime Request Lifecycle

## 확인한 구조
- 현재 저장소에서 실행 가능한 앱 엔트리포인트, 서버, CLI 바이너리는 확인되지 않았다.
- 루트 진입 문서는 `README.md`다.
- 프롬프트 자산은 `Prompt/` 디렉터리에 있으며, 확인된 파일은 `Prompt/init.md`, `Prompt/meta harness.md`다.

## 현재 저장소 기준 흐름
1. 사용자는 루트 `README.md`로 저장소 목적과 포함 범위를 확인한다.
2. 실제 초기화 입력은 `Prompt/init.md`를 통해 대상 저장소의 에이전트에게 전달된다.
3. 대상 저장소 에이전트는 코드베이스를 탐색한 뒤 `docs/` 4축 구조를 생성하거나 정렬한다.
4. 이후 세션은 `AGENTS.md`와 관련 canonical source, `docs/memory/runtime/context.md`를 읽고 작업을 재개한다.

## TODO(project-specific)
- 자동 실행 엔트리포인트가 추가되면 실제 호출 경로와 입출력 흐름을 이 문서에 구체화한다.
- 프롬프트 자산의 배포 경로가 고정되면 복사/배포 절차를 명시한다.
