---
last-verified: 2026-03-29
---

# Testing Test Strategy

## 목적
테스트 책임 분리와 우선 검증 경로를 설명한다.

## 기본 원칙
- 사용자 동작, 라우트, 렌더링, 정책은 feature / integration 테스트로 본다.
- 순수 로직, factory, registry, query 조립은 unit 테스트로 본다.
- 공용 fixture와 mock은 한 위치에서 관리하고, 임시 테스트 헬퍼 확산을 막는다.

## 이 문서에 함께 남길 항목
- feature test 경로
- unit test 경로
- support fixture 경로
