# 범용 프로젝트 Init 사용법

이 폴더는 다른 프로젝트 루트에 복사해 바로 문서 하네스와 작업 구조를 초기화할 수 있는 Markdown 스캐폴드다.
Datflow의 운영 방식에서 범용화 가능한 부분만 남겼고, 프로젝트 고유 사실은 placeholder로 비워 두었다.

## 추천 사용 순서
1. `init/` 내부 파일과 폴더를 대상 프로젝트 루트로 복사한다.
2. 아래 placeholder를 먼저 치환한다.
3. 프로젝트와 맞지 않는 문서나 규칙 파일은 삭제하거나 경로를 바꾼다.
4. `docs/architecture/`, `docs/product/`에 실제 프로젝트 사실을 채운다.
5. 첫 작업 시작 전에 `docs/plans/active/active_task.md`를 현재 작업 내용으로 채운다.

## 먼저 바꿔야 할 placeholder
- `{{PROJECT_NAME}}`: 프로젝트 이름
- `{{PROJECT_SUMMARY}}`: 한 줄 요약
- `{{STACK_SUMMARY}}`: 핵심 스택
- `{{PRIMARY_LANGUAGE}}`: 문서/대화 언어
- `{{RUNTIME_PATHS}}`: 실제 애플리케이션 코드 경로
- `{{TEST_COMMANDS}}`: 기본 테스트 명령
- `{{MAIN_SURFACES}}`: 사용자 노출 화면 또는 주요 엔트리포인트
- `{{GUARDED_PATHS}}`: 승인 없이 건드리면 안 되는 경로

## 꼭 커스터마이즈할 파일
- `AGENTS.md`
- `README.md`
- `docs/agent-rules/*.md`
- `docs/architecture/*.md`
- `docs/product/*.md`
- `docs/plans/README.md`

## 그대로 두어도 되는 파일
- `docs/plans/active/active_task.md`
- `docs/design-docs/README.md`
- `docs/memory/working-memory.md`

## 운영 원칙
- `AGENTS.md`는 지도와 핵심 계약만 유지한다.
- 구조 사실은 `docs/architecture/`에, 사용자 노출 사실은 `docs/product/`에 둔다.
- 현재 작업 메모는 `docs/plans/active/active_task.md` 하나만 쓴다.
- 완료 로그는 `docs/plans/completed/YYYY-MM.md`에 남긴다.
- summary 문서는 pointer 역할만 하고, 원문 사실을 복제하지 않는다.
