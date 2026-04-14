# architecture 안내

이 폴더는 저장소 내부 구조와 파일 간 연결을 설명하는 summary layer다. 사용자 약속이나 제품 정책은 `docs/knowledge/`로, 현재 작업 상태는 `docs/memory/runtime/`으로 보낸다.

## 다루는 것
- 저장소 진입점과 사용 흐름
- 설정 파일, 서비스 wiring, 조립 지점
- 테스트 구조와 검증 전략

## 다루지 않는 것
- 에이전트 공통 행동 규칙
- 사용자 지원 범위와 장기 제품 정책
- 현재 작업 상태와 세션 로그

## 문서 선택 기준
- 저장소가 어떻게 시작되고 사용되는지 보려면 `runtime-request-lifecycle.md`
- 설정 파일과 조립 지점을 보려면 `runtime-config-and-services.md`
- 테스트 책임 분리와 검증 방식을 보려면 `testing-test-strategy.md`
