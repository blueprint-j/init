---
last-verified: {{LAST_VERIFIED}}
---

# 런타임 / 데이터 구조

## 핵심 규칙 / 결정 기준
* 요청 진입점, 서비스 조립, 데이터 접근 계층의 책임 경계를 명확히 적는다.
* 사용자 노출 규칙은 이 문서가 아니라 `docs/product/`에 둔다.
* 새 구조를 추가할 때는 기존 진입점과 service wiring 패턴을 먼저 설명한다.

## 현재 구조
* 진입점: `{{ENTRYPOINTS}}`
* 서비스 조립: `{{SERVICE_WIRING}}`
* 데이터 접근: `{{DATA_ACCESS}}`
* 외부 의존성: `{{EXTERNAL_DEPENDENCIES}}`

## 변경 시 체크리스트
* runtime 경로와 config key가 문서와 일치하는가?
* data contract 변경이 있다면 product/test 문서도 함께 바뀌는가?
* 임시 helper 대신 기존 조립 경로에 흡수할 수 있는가?
