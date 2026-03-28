---
last-verified: 2026-03-28
---

# Runtime Config And Services

## 목적
환경 설정, 기본값, service wiring의 canonical source를 모은다.

## 핵심 규칙
- 환경값과 기본값은 한 경로에서만 정의하고, 다른 문서에는 링크만 둔다.
- shared service는 hidden lookup보다 명시적 주입을 우선한다.
- runtime contract가 바뀌면 관련 테스트와 문서를 같은 작업에서 갱신한다.

## 이 프로젝트에서 채워 넣을 항목
- 주요 config 파일: `{{CONFIG_PATHS}}`
- service registry / container 경로: `{{SERVICE_CONTAINER_PATHS}}`
- 환경 템플릿 경로: `{{ENV_TEMPLATE_PATHS}}`
