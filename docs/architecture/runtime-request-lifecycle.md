---
last-verified: 2026-03-29
---

# 요청 수명주기

## 목적
요청이 어떤 진입점으로 들어와 어떤 계층을 지나 최종 응답이 되는지 설명한다.

## 이 문서가 다루는 것
- 라우트, 명령, 컨트롤러, handler 같은 진입점의 책임
- 입력 검증, 흐름 제어, 응답 직전 직렬화가 어느 계층에서 갈리는지
- 얇은 진입점 원칙을 코드에서 어디로 확인해야 하는지

## 이 문서가 다루지 않는 것
- 환경 설정 값이나 서비스 등록 위치
- repository, query builder, read model의 세부 책임
- 어떤 경로나 화면을 제품적으로 지원하는지에 대한 약속

## 기본 흐름
1. 라우트 또는 명령 진입점이 요청을 받는다.
2. 컨트롤러 또는 handler가 입력 검증과 흐름 제어만 수행한다.
3. service, builder, factory, repository가 페이지나 응답 payload를 조립한다.
4. view 또는 serializer가 최종 출력 형태를 만든다.

## 이 문서에 함께 남길 항목
- 실제 진입 경로
- 공통 service wiring 위치
- view / serializer 위치
