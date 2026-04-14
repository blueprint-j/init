# Documentation Reference

이 문서는 문서 운영 기준의 canonical source다. 문서가 어떤 축에 속하는지, summary layer와 canonical source를 어떻게 구분하는지, runtime 문서를 언제 승격하는지 여기서 정한다.

## 핵심 개념
- `canonical source`: 특정 정책이나 사실의 최종 기준 문서다. 같은 내용을 다른 summary layer에 복제하지 않는다.
- `summary layer`: 읽기 순서, 경계, 라우팅만 안내하는 진입 문서다.
- `runtime context`: 현재 작업의 단일 상태 문서이며 `docs/memory/runtime/context.md`를 뜻한다.
- `daily log`: 현재 세션의 짧은 시계열 로그이며 `docs/memory/runtime/dailylog.md`를 뜻한다.
- `promotion`: runtime 문서의 일회성 메모 중 재사용 가치가 생긴 항목을 적절한 canonical source로 승격하는 작업이다.

## 고정 문서 축
- `docs/agent-rules/`: 에이전트 행동 규칙
- `docs/architecture/`: 내부 구조, wiring, 테스트 구조
- `docs/knowledge/`: 사용자 약속, 장기 정책, 문서 운영 기준
- `docs/memory/runtime/`: 현재 작업 상태와 현재 세션 로그

## summary layer 목록
- `AGENTS.md`
- `docs/README.md`
- `docs/agent-rules/README.md`
- `docs/architecture/README.md`
- `docs/knowledge/README.md`
- `docs/memory/index.md`

## 문서 라우팅 기준
| 정보 유형 | 문서 |
| --- | --- |
| 에이전트가 항상 따라야 하는 행동 규칙 | `docs/agent-rules/agent-protocol.md` |
| 저장소 진입점, 파일 연결, 테스트 구조 | `docs/architecture/` 아래 관련 canonical 문서 |
| 사용자 표면, 지원 범위, 장기 문서 운영 정책 | `docs/knowledge/` 아래 관련 canonical 문서 |
| 현재 작업 목표, 완료 기준, 다음 행동 | `docs/memory/runtime/context.md` |
| 현재 세션의 짧은 판단, blocker, 검증 로그 | `docs/memory/runtime/dailylog.md` |

## 승격 기준
- 한 세션에서만 필요한 조사 메모는 runtime 문서에만 남긴다.
- 다음 세션에도 재사용될 규칙, 구조적 사실, 문서 운영 기준은 더 구체적인 canonical source로 승격한다.
- 승격 후에는 runtime 문서에 장기 사실을 중복 보관하지 않는다.
