---
last-verified: 2026-03-28
---

# Testing Test Strategy

## 목적
`{{PROJECT_NAME}}`의 테스트 책임 분리와 우선 검증 경로를 설명한다.

## 기본 원칙
- 사용자 동작, 라우트, 렌더링, 정책은 feature / integration 테스트로 본다.
- 순수 로직, factory, registry, query 조립은 unit 테스트로 본다.
- 공용 fixture와 mock은 한 위치에서 관리하고, 임시 테스트 헬퍼 확산을 막는다.

## 이 프로젝트에서 채워 넣을 항목
- feature test 경로: `{{FEATURE_TEST_PATHS}}`
- unit test 경로: `{{UNIT_TEST_PATHS}}`
- support fixture 경로: `{{TEST_SUPPORT_PATHS}}`
