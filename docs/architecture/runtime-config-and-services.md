# Runtime Config And Services

## 현재 확인한 사실
- `package.json`, `pyproject.toml`, `go.mod`, `Cargo.toml`, `pom.xml`, `composer.json` 등 의존성/빌드 매니페스트는 확인되지 않았다.
- `.github/` 워크플로, `tests/`, `spec/`, `__tests__/` 같은 자동 검증 구조도 확인되지 않았다.
- 서비스 컨테이너, DI 설정, 환경 변수 계약, 런타임 설정 파일은 확인되지 않았다.

## 현재 저장소의 조립 지점
- 현재 저장소는 애플리케이션 조립보다 문서 자산의 참조 관계가 핵심이다.
- 루트 `README.md`가 저장소 개요를 제공한다.
- `Prompt/init.md`가 문서 하네스 초기화 작업의 주 입력을 제공한다.

## TODO(project-specific)
- 환경 변수와 운영 설정 계약
- 서비스 등록 또는 모듈 조립 지점
- 프레임워크별 설정 파일 경로
