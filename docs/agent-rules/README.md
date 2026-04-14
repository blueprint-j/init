# AI 에이전트 규칙 지도

`docs/agent-rules/`는 에이전트가 어떻게 행동해야 하는지만 다룬다.

## 이 폴더가 다루는 것
- 공통 작업 원칙
- 승인 필요 기준
- 검증과 완료 보고 계약

## 이 폴더가 다루지 않는 것
- 내부 구조와 runtime wiring
- 사용자 노출 정책
- 현재 작업 상태와 임시 로그

## 시작 문서
- [agent-protocol.md](agent-protocol.md): 행동, 구현, 보안, 검증의 canonical source

## 운영 기준
- 같은 행동 규칙을 여러 문서에 중복해서 적지 않는다.
- 새 가이드는 `agent-protocol.md`만으로 부족할 때만 추가한다.
- 반복되는 문서 운영 문제는 `docs/knowledge/documentation-reference.md`에서 다룬다.
