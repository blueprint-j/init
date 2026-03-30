# 아키텍처 지도

## 핵심 규칙
- 진입점은 얇게 유지하고, 실제 조립과 wiring은 하위 계층으로 내린다.
- 사용자 노출 동작과 장기 정책은 `docs/knowledge/`에 두고, 내부 구조와 runtime wiring은 여기서 설명한다.
- 범용 템플릿의 기본 아키텍처 문서는 요청 흐름, 설정과 서비스 조립, 테스트 전략만 다룬다.

## 이 폴더가 답하는 질문
- 요청이 어디로 들어와 어떤 계층을 거쳐 응답 또는 결과로 나가는가?
- 설정, 서비스, 컨테이너, 공용 wiring이 어디서 조립되는가?
- 기능을 추가하거나 수정할 때 어떤 내부 경계를 지켜야 하는가?

## 이 폴더가 답하지 않는 질문
- 사용자에게 어떤 동작을 약속하는가?
- 어떤 기능이나 모듈이 제품적으로 지원되는가?
- 현재 작업에서 무엇을 시도 중이고 어디서 막혔는가?

## 다음 문서
- [runtime-request-lifecycle.md](runtime-request-lifecycle.md)
- [runtime-config-and-services.md](runtime-config-and-services.md)
- [testing-test-strategy.md](testing-test-strategy.md)

## 경계별 문서 선택
- 요청 흐름과 진입점은 `runtime-request-lifecycle.md`
- 설정값, 컨테이너, 서비스 wiring은 `runtime-config-and-services.md`
- 테스트 책임 분리는 `testing-test-strategy.md`

## Optional Add-on
다음 문서는 프로젝트에 실제 필요가 생길 때만 추가한다.

- 도메인 모듈 구조 문서
- 도메인 모듈 추가 절차 문서
- repository / query 경계 문서
- SEO / sitemap / generated output 문서

## 기록 기준
- 각 하위 문서에는 실제 진입 경로, 주요 조립 지점, 테스트 경로 같은 구조 anchor를 함께 남긴다.
- 사용자 노출 정책과 내부 wiring이 함께 바뀌면 `docs/knowledge/product-reference.md`도 같이 갱신한다.
