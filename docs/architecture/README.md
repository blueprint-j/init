# 아키텍처 지도

`docs/architecture/`는 코드가 내부에서 어떻게 조립되고 흐르는지만 다룬다.

## 이 폴더가 다루는 것
- 요청과 작업의 내부 흐름
- 설정, 서비스, 컨테이너 wiring
- 테스트 경계와 검증 구조

## 이 폴더가 다루지 않는 것
- 사용자에게 약속하는 동작
- 장기 문서 운영 정책
- 현재 작업의 진행 상황

## 시작 문서
- [runtime-request-lifecycle.md](runtime-request-lifecycle.md): 요청 흐름과 진입점
- [runtime-config-and-services.md](runtime-config-and-services.md): 설정과 서비스 조립
- [testing-test-strategy.md](testing-test-strategy.md): 테스트 책임과 우선 검증 경로

## 기록 기준
- 실제 코드에서 확인한 경로만 남긴다.
- 사용자 노출 기준까지 바뀌면 `docs/knowledge/product-reference.md`도 함께 갱신한다.
