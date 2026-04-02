# AI 에이전트 규칙 지도

## 목적
`docs/agent-rules/` 폴더의 역할과 문서 간 경계를 짧게 설명하고, 어떤 규칙을 어디서 읽어야 하는지 빠르게 안내한다.

## 사용 원칙
- 모든 작업에서 `AGENTS.md` 다음으로 `agent-protocol.md`를 읽는다.
- 같은 에이전트의 행동 규칙을 여러 Markdown 파일에 나눠 적지 않는다.
- 공통 행동 계약은 `agent-protocol.md`, 스킬 선택은 `skill-routing.md`로 분리한다.
- 이 폴더의 기본 canonical source는 `agent-protocol.md`를 중심으로 유지한다.
- 추가 guide가 필요하면 프로젝트 특화 문서로 별도 추가하되, 기본 템플릿에는 포함하지 않는다.

## 문서 역할
- [agent-protocol.md](agent-protocol.md)
- [skill-routing.md](skill-routing.md)

## 읽기 기준
- 공통 작업 원칙, 승인 기준, 완료 보고 규칙은 `agent-protocol.md`
- 어떤 스킬을 먼저 떠올릴지와 호출 이름은 `skill-routing.md`
- 이 폴더 구조 자체를 어떻게 유지할지는 이 문서

## 이 폴더가 다루는 것
- 에이전트 공통 행동 계약
- 스킬 선택 규칙과 확장 기준
- `agent-rules` 폴더의 유지 원칙

## 이 폴더가 다루지 않는 것
- 내부 계층 구조와 runtime wiring
- 사용자 노출 정책과 제품 지원 범위
- 현재 작업의 진행 상황과 임시 메모

## 관련 경로
- `docs/architecture/README.md`
- `docs/knowledge/README.md`
- `docs/memory/index.md`

## 운영 규칙
- 반복되는 실패 패턴이 보이면 `agent-protocol.md` 또는 `docs/knowledge/documentation-reference.md`의 운영 원칙을 갱신한다.
- 새 guide를 추가할 때는 왜 기본 템플릿으로는 부족한지와 함께, 단일 책임과 함께 읽을 canonical source를 명시한다.
