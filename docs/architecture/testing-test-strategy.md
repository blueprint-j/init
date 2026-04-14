# Testing Test Strategy

## 현재 확인한 사실
- 자동 테스트 디렉터리와 테스트 러너 설정은 확인되지 않았다.
- CI 구성 파일이나 문서 검증 스크립트도 확인되지 않았다.

## 기본 검증 전략
- 문서 저장소에서는 먼저 경로, 파일 존재 여부, 읽기 순서가 실제 구조와 맞는지 점검한다.
- summary layer 문서는 경계와 라우팅만 안내하는지 수동 검토한다.
- canonical 문서는 확인한 사실과 `TODO(project-specific)` placeholder를 구분하는지 확인한다.
- runtime 문서는 현재 작업과 현재 세션 기준으로 재초기화되었는지 확인한다.

## 향후 테스트 분리 기준
- Unit: 문서 생성 또는 변환 스크립트가 생기면 해당 스크립트의 입력/출력 규약을 검증한다.
- Integration: 템플릿을 다른 저장소에 적용했을 때 기대 트리와 참조가 생성되는지 검증한다.
- System / E2E: `TODO(project-specific)`

## TODO(project-specific)
- 사용할 테스트 도구
- CI 진입점과 실행 조건
