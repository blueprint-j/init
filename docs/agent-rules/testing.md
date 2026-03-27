---
last-verified: {{LAST_VERIFIED}}
---

# 테스트 규칙

## 적용 범위
* 테스트 경로 전체

## 먼저 읽을 문서
* `docs/architecture/testing-strategy.md`

## 반드시 확인할 포인트
* 기본 테스트 명령: `{{TEST_COMMANDS}}`
* 공용 fixture와 mock 위치
* feature/integration/unit 책임 분리

## 핵심 규칙
* 사용자 관점 동작은 상위 테스트에서, 순수 로직은 단위 테스트에서 본다.
* mock과 fixture는 프로젝트가 정한 공용 위치에 둔다.
* 의미 없는 snapshot성 테스트를 늘리지 않는다.
* 구조나 정책을 바꾸면 관련 테스트를 함께 검토한다.
