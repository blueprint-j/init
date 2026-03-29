---
last-verified: 2026-03-29
---

# 테스트 전략

## 목적
테스트 책임 분리와 우선 검증 경로를 설명한다.

## 이 문서가 다루는 것
- feature, integration, unit 테스트가 각각 보호하는 경계
- 공용 fixture와 mock을 어디서 관리해야 하는지
- 변경 유형에 따라 어떤 검증 경로를 먼저 실행할지

## 이 문서가 다루지 않는 것
- 제품 정책 자체의 정의
- 개별 버그 조사 메모나 일회성 재현 로그
- 특정 서비스 wiring이나 요청 처리 흐름의 상세 구조

## 기본 원칙
- 사용자 동작, 라우트, 렌더링, 정책은 feature / integration 테스트로 본다.
- 순수 로직, factory, registry, query 조립은 unit 테스트로 본다.
- 공용 fixture와 mock은 한 위치에서 관리하고, 임시 테스트 헬퍼 확산을 막는다.

## 이 문서에 함께 남길 항목
- feature test 경로
- unit test 경로
- support fixture 경로
