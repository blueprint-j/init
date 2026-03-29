# 메모리 구조 지도

`docs/memory/`는 현재 세션과 작업을 위한 live runtime memory 계층이다. 장기 규칙과 사실은 여기의 목적이 아니며, 검증된 내용은 `docs/agent-rules/`, `docs/architecture/`, `docs/knowledge/`로 승격한다.

## 핵심 규칙
- `docs/agent-rules/`는 이 폴더 안이 아니라, `memory`보다 먼저 읽는 선행 축이다.
- 현재 작업의 단일 상태 문서는 `docs/memory/runtime/context.md`다.
- `docs/memory/runtime/dailylog.md`는 짧은 진행 로그, 관찰, 임시 blocker 메모용이다.
- runtime memory는 disposable하다. 작업이 끝나면 다음 작업을 위해 가볍게 정리한다.
- 장기 참조 가치가 있는 사실, 결정, 용어, 패턴은 `docs/knowledge/` 또는 더 구체적인 canonical 문서로 이동한다.

## 이 폴더가 다루지 않는 것
- 장기 유지할 행동 규칙
- 내부 구조와 wiring 설명
- 사용자 노출 정책과 지원 범위
- 완료 후에도 보존해야 하는 구조 결정 기록

## Retain / Recall / Reflect
- Retain: 지금 필요한 목표, 가정, blocker만 runtime 문서에 유지한다.
- Recall: 작업 시작 시 `AGENTS.md`와 `docs/agent-rules/`의 관련 guide를 먼저 읽고, 그 뒤에 장기 맥락은 `docs/knowledge/`, 현재 상태는 `docs/memory/runtime/`에서 찾는다.
- Reflect: 작업 종료 시 durable한 결과만 장기 문서로 승격하고, runtime 문서는 빈 작업 슬롯에 가깝게 되돌린다.

## 관련 문서
- [../agent-rules/README.md](../agent-rules/README.md)
- [runtime/context.md](runtime/context.md)
- [runtime/dailylog.md](runtime/dailylog.md)
- [../knowledge/README.md](../knowledge/README.md)
