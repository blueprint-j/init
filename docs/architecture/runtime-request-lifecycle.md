---
last-verified: 2026-03-29
---

# Runtime Request Lifecycle

## 목적
요청이 진입점에서 응답까지 어떻게 흐르는지 설명한다.

## 기본 흐름
1. 라우트 또는 명령 진입점이 요청을 받는다.
2. 컨트롤러 또는 handler가 입력 검증과 흐름 제어만 수행한다.
3. service, builder, factory, repository가 페이지나 응답 payload를 조립한다.
4. view 또는 serializer가 최종 출력 형태를 만든다.

## 이 문서에 함께 남길 항목
- 실제 진입 경로
- 공통 service wiring 위치
- view / serializer 위치
