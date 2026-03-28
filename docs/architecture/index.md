# Architecture Index

## Core Rules
- 컨트롤러와 진입점은 얇게 유지하고, 실제 조립과 wiring은 하위 계층으로 내린다.
- 사용자 노출 동작은 `docs/product/`에 두고, 내부 구조와 runtime wiring은 여기서 설명한다.
- 도메인 모듈 차이는 registry, provider, repository, presentation 계층으로 표현한다.

## Read Next
- [runtime-request-lifecycle.md](runtime-request-lifecycle.md)
- [runtime-config-and-services.md](runtime-config-and-services.md)
- [data-domain-module-system.md](data-domain-module-system.md)
- [data-adding-a-domain-module.md](data-adding-a-domain-module.md)
- [data-repository-and-query-layer.md](data-repository-and-query-layer.md)
- [publishing-seo-and-sitemaps.md](publishing-seo-and-sitemaps.md)
- [testing-test-strategy.md](testing-test-strategy.md)

## Main Code Anchors
- `{{RUNTIME_PATHS}}`
- `{{SURFACE_PATHS}}`
- `{{TEST_PATHS}}`
