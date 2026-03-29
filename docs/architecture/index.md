# Architecture Index

## Core Rules
- 컨트롤러와 진입점은 얇게 유지하고, 실제 조립과 wiring은 하위 계층으로 내린다.
- 사용자 노출 동작은 `docs/knowledge/product-reference.md`에 두고, 내부 구조와 runtime wiring은 여기서 설명한다.
- 도메인 모듈 차이는 registry, provider, repository, presentation 계층으로 표현한다.

## 이 폴더가 답하는 질문
- 요청이 어디로 들어와 어떤 계층을 거쳐 응답으로 나가는가?
- 설정, 서비스, 레지스트리, 저장소, 출력 파이프라인이 어디서 조립되는가?
- 기능을 추가하거나 수정할 때 어떤 내부 경계를 지켜야 하는가?

## 이 폴더가 답하지 않는 질문
- 사용자에게 어떤 동작을 약속하는가?
- 어떤 모듈이나 페이지가 제품적으로 지원되는가?
- 현재 작업에서 무엇을 시도 중이고 어디서 막혔는가?

## Read Next
- [runtime-request-lifecycle.md](runtime-request-lifecycle.md)
- [runtime-config-and-services.md](runtime-config-and-services.md)
- [data-domain-module-system.md](data-domain-module-system.md)
- [data-adding-a-domain-module.md](data-adding-a-domain-module.md)
- [data-repository-and-query-layer.md](data-repository-and-query-layer.md)
- [publishing-seo-and-sitemaps.md](publishing-seo-and-sitemaps.md)
- [testing-test-strategy.md](testing-test-strategy.md)

## 경계별 문서 선택
- 요청 흐름과 진입점은 `runtime-request-lifecycle.md`
- 설정값, 컨테이너, 서비스 wiring은 `runtime-config-and-services.md`
- 모듈 등록과 조립은 `data-domain-module-system.md`
- 새 모듈 추가 절차는 `data-adding-a-domain-module.md`
- query, repository, read model 경계는 `data-repository-and-query-layer.md`
- SEO 메타와 generated output 파이프라인은 `publishing-seo-and-sitemaps.md`
- 테스트 책임 분리는 `testing-test-strategy.md`

## 기록 기준
- 각 하위 문서에는 실제 진입 경로, 주요 조립 지점, 테스트 경로 같은 구조 anchor를 함께 남긴다.
- 사용자 노출 정책과 내부 wiring이 함께 바뀌면 `docs/knowledge/product-reference.md`도 같이 갱신한다.
