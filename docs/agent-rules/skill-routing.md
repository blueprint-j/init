---
last-verified: 2026-04-03
---

# 스킬 라우팅 가이드

## 목적
요청 유형에 따라 어떤 스킬을 먼저 선택할지와, 현재 저장소에 어떤 스킬이 설치되어 있는지 한 곳에서 빠르게 확인한다.

## 기본 원칙
- 스킬의 실제 동작 계약은 `.agents/skills/*/SKILL.md`를 따른다.
- 이 문서는 스킬 목록과 간단한 선택 기준만 담는다.
- 프로젝트 전용 상세 규칙은 `docs/agent-rules/README.md`를 따른다.
- 저장소에 없는 스킬은 설치된 것처럼 적지 않는다.

## 읽기 기준
- 어떤 스킬이 설치되어 있는지와 호출 이름은 이 문서
- 프로젝트 전용 상세 규칙은 `docs/agent-rules/README.md`
- 공통 작업 원칙은 `docs/agent-rules/agent-protocol.md`

## 현재 상태
- 현재 `.agents/skills/`에 등록된 스킬이 없다.
- 스킬을 다시 추가하면 이 문서에 호출 이름과 한 줄 설명만 갱신한다.

## 관련 경로
- `.agents/skills/`
- `docs/agent-rules/README.md`
- `docs/agent-rules/agent-protocol.md`
