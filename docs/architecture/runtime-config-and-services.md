---
last-verified: 2026-03-29
---

# 런타임 설정과 서비스 조립

## 목적
환경 설정, 기본값, service wiring의 canonical source를 모은다.

## 이 문서가 다루는 것
- 환경 변수, 설정 파일, 기본값의 단일 정의 위치
- service registry, container, factory wiring이 모이는 지점
- shared dependency를 명시적으로 주입하는 구조 기준

## 이 문서가 다루지 않는 것
- 요청이 진입점에서 응답까지 흐르는 순서
- repository, query builder, read model의 책임 분리
- 사용자 노출 정책과 지원 범위

## 핵심 규칙
- 환경값과 기본값은 한 경로에서만 정의하고, 다른 문서에는 링크만 둔다.
- shared service는 hidden lookup보다 명시적 주입을 우선한다.
- runtime contract가 바뀌면 관련 테스트와 문서를 같은 작업에서 갱신한다.

## 이 문서에 함께 남길 항목
- 주요 config 파일
- service registry / container 경로
- 환경 템플릿 경로
