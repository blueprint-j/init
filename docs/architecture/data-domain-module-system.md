---
last-verified: 2026-03-28
---

# Data Domain Module System

## 목적
`{{DOMAIN_MODULES}}`를 런타임에 어떻게 등록하고 조립하는지 설명한다.

## 핵심 규칙
- 모듈 차이는 central switch보다 registry / provider / module 조합으로 표현한다.
- 지원 모듈 목록은 제품 문서와 런타임 등록 위치를 함께 기준으로 본다.
- fallback, synthetic, test-only 모듈은 제품 지원 목록과 분리한다.

## 이 프로젝트에서 채워 넣을 항목
- 모듈 등록 위치: `{{MODULE_REGISTRY_PATHS}}`
- provider 또는 module factory 경로: `{{MODULE_PROVIDER_PATHS}}`
- presentation / detail 조합 경로: `{{MODULE_PRESENTATION_PATHS}}`
