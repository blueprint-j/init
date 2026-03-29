---
last-verified: 2026-03-29
---

# Data Domain Module System

## 목적
도메인 모듈을 런타임에 어떻게 등록하고 조립하는지 설명한다.

## 이 문서가 다루는 것
- 모듈 slug 또는 타입이 어떤 registry와 provider로 연결되는가
- 모듈별 presentation / detail 조립 경계가 어디서 갈리는가
- fallback, synthetic, test-only 모듈을 runtime에서 어떻게 분리하는가

## 이 문서가 다루지 않는 것
- 어떤 모듈이 제품적으로 지원되는지에 대한 약속
- 사용자에게 노출되는 목록·상세 정책
- raw record 필드 계약의 세부 shape

## 핵심 규칙
- 모듈 차이는 central switch보다 registry / provider / module 조합으로 표현한다.
- 지원 모듈 목록은 `docs/knowledge/product-reference.md`와 런타임 등록 위치를 함께 기준으로 본다.
- fallback, synthetic, test-only 모듈은 제품 지원 목록과 분리한다.

## 이 문서에 함께 남길 항목
- 모듈 등록 위치
- provider 또는 module factory 경로
- presentation / detail 조합 경로
