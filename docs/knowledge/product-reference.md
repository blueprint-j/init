---
last-verified: 2026-03-29
---

# 제품 기준

## 목적
사용자에게 실제로 드러나는 동작, 지원 범위, 데이터 계약, 인덱싱 정책을 한 곳에서 관리한다.

## 이 문서가 다루는 것
- 주요 페이지, 라우트, 검색·목록·상세 흐름 같은 사용자 표면 동작
- 운영에서 지원하는 모듈, 카탈로그, 기능 범위
- 화면 렌더링과 검색·정렬·필터에 필요한 최소 데이터 계약
- canonical URL, robots, sitemap, thin content 같은 노출 정책

## 이 문서가 다루지 않는 것
- service container, registry, query builder, repository 같은 내부 wiring
- generated output을 만드는 내부 파이프라인 세부
- 현재 작업 중 임시로 확인한 현상과 blocker

## 분리 규칙
- fallback, synthetic, test-only 경로는 여기에 제품 지원 사실처럼 적지 않는다.
- 내부 wiring, service 조립, repository 구조는 `docs/architecture/`에 둔다.
- 제품 정책이 내부 구조와 함께 바뀌면 두 축의 문서를 같은 작업에서 같이 갱신한다.
