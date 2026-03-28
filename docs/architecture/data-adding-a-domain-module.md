---
last-verified: 2026-03-28
---

# Adding A Domain Module

## 기본 절차
1. 런타임 등록 위치에 새 모듈을 등록한다.
2. provider, query, presentation, detail 조립 경로를 추가한다.
3. 필요하면 relation 또는 aggregation 전략을 선택한다.
4. 관련 unit / feature 테스트를 추가한다.
5. architecture / product 문서를 함께 갱신한다.

## 확인할 항목
- 지원 목록 문서 갱신 여부
- route / detail / list 노출 규칙 반영 여부
- synthetic path와 운영 path 분리 여부
