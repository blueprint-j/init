---
last-verified: 2026-03-29
---

# 도메인 모듈 추가

## 이 문서가 다루는 것
- 새 모듈 추가 시 내부 구조를 어떤 순서로 건드릴지
- runtime registration, query, presentation, test의 최소 변경 집합
- 함께 갱신해야 하는 architecture / knowledge 문서의 위치

## 이 문서가 다루지 않는 것
- 제품 지원 목록을 왜 늘리는지에 대한 사업적 배경
- 현재 작업의 진행 로그나 blocker

## 기본 절차
1. 런타임 등록 위치에 새 모듈을 등록한다.
2. provider, query, presentation, detail 조립 경로를 추가한다.
3. 필요하면 relation 또는 aggregation 전략을 선택한다.
4. 관련 unit / feature 테스트를 추가한다.
5. architecture와 `docs/knowledge/product-reference.md`를 함께 갱신한다.

## 확인할 항목
- 지원 목록 문서 갱신 여부
- route / detail / list 노출 규칙 반영 여부
- synthetic path와 운영 path 분리 여부
