---
last-verified: {{LAST_VERIFIED}}
---

# 런타임 / 데이터 규칙

## 적용 범위
* `{{RUNTIME_PATHS}}`

## 먼저 읽을 문서
* `docs/architecture/runtime-and-data.md`

## 반드시 확인할 포인트
* 실제 entrypoint와 service wiring은 어디에 있는가?
* runtime 코드와 data access 계층의 책임 경계는 무엇인가?
* config key, 환경 변수, schema contract가 문서와 일치하는가?

## 핵심 규칙
* 사용자 노출 동작은 `docs/product/`에서, 내부 wiring은 `docs/architecture/`에서 본다.
* 중심 switch나 ad hoc wiring 대신, 이미 있는 진입점과 구성 패턴을 따른다.
* 구조를 바꾸면 관련 architecture 문서와 테스트를 같은 작업에서 갱신한다.

## 피해야 할 것
* controller/handler에 과도한 조립 로직을 넣는 것
* data contract 변경을 문서와 테스트 없이 진행하는 것
* 진입점을 우회하는 일회성 helper를 추가하는 것
