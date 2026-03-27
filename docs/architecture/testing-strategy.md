---
last-verified: {{LAST_VERIFIED}}
---

# 테스트 전략

## 핵심 규칙 / 결정 기준
* 사용자 관점 동작은 상위 테스트에서 검증한다.
* 순수 로직, factory, parser, serializer, query 조합은 단위 테스트에서 검증한다.
* mock과 공용 fixture 위치를 한 군데로 고정한다.

## 현재 보호되는 영역
* 핵심 흐름: `{{CRITICAL_FLOWS}}`
* 정책/권한/보안: `{{POLICY_TESTS}}`
* 런타임 조립과 데이터 계약: `{{RUNTIME_TESTS}}`

## 기본 명령
```bash
{{TEST_COMMANDS}}
```
