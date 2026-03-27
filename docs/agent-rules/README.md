# AI Domain Rules Map

이 폴더는 path-scoped 규칙을 `docs/` 안에서 운영하기 위한 범용 규칙 묶음이다.
경로별로 필요한 문서와 확인 포인트만 압축해 제공하며, architecture/product의 canonical source를 대체하지 않는다.
`agent-protocol.md`는 에이전트 행동·구현·보안·검증 원칙의 canonical source다.

## 사용 원칙
* 모든 작업에서 [global.md](global.md)를 먼저 읽는다.
* 수정하려는 경로에 맞는 규칙 문서를 추가로 읽는다.
* 규칙 문서가 `architecture`, `product`, `plans`와 충돌하면 더 구체적인 canonical source를 우선한다.

## 경로별 읽기 순서

| 규칙 문서 | 적용 경로 | 함께 읽을 canonical source | 반드시 확인할 포인트 |
| --- | --- | --- | --- |
| [global.md](global.md) | 저장소 전역 | `AGENTS.md`, `docs/agent-rules/agent-protocol.md`, `docs/plans/README.md` | `docs/plans/active/active_task.md`, `git status --short` |
| [runtime-and-data.md](runtime-and-data.md) | `{{RUNTIME_PATHS}}` | `docs/architecture/runtime-and-data.md` | 실제 entrypoint, config, service wiring, data access 경로 |
| [testing.md](testing.md) | `tests/`, `spec/` 등 테스트 경로 | `docs/architecture/testing-strategy.md` | 기본 테스트 명령, fixture 위치, 금지된 테스트 패턴 |
| [guarded-zones.md](guarded-zones.md) | `{{GUARDED_PATHS}}` | `AGENTS.md`, `docs/agent-rules/agent-protocol.md` | 승인 필요 여부, generated/source 구분 |

## 운영 규칙
* 반복되는 실패 패턴이 보이면 관련 규칙 문서를 갱신하거나 `docs/memory/memory-bank-systemPatterns.md`에 Bad/Good Example을 추가한다.
* 규칙 문서는 아키텍처 설명을 복사해 쌓는 곳이 아니라, 특정 경로에서 지켜야 할 행동 기준과 읽기 순서를 요약하는 곳이다.
* 새 규칙을 추가할 때는 “어느 경로에서”, “무슨 실수를 막기 위해”, “어떤 canonical source를 먼저 읽어야 하는지”가 한 번에 보여야 한다.
