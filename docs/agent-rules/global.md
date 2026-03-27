---
last-verified: {{LAST_VERIFIED}}
---

# 전역 규칙

## 적용 범위
* 저장소 전역

## 먼저 읽을 문서
* `AGENTS.md`
* `docs/agent-rules/agent-protocol.md`
* `docs/plans/README.md`

## 반드시 확인할 포인트
* 현재 작업 기억과 완료 기록 운영 규칙은 `docs/plans/README.md`를 기준으로 보고, 실제 상태는 `docs/plans/active/active_task.md`에서 본다.
* 작업 시작 시 `git status --short`로 dirty worktree를 확인한다.
* 문서 구조를 바꾸면 `README.md`, `AGENTS.md`, 관련 `docs/` 진입 문서가 같은 구조를 말하는지 교차 검토한다.

## 핵심 규칙
* 코드 변경과 문서 변경을 분리하지 않는다.
* 새 진실의 저장소를 만들지 않는다. 정보는 가장 구체적인 canonical source에 넣는다.
* completed 로그의 역할과 기록 임계값은 `docs/plans/README.md`를 기준으로 해석한다.

## 문서 위생(hygiene) 규칙
* live 문서 기준으로 내부 링크와 구조를 점검한다.
* `last-verified` 적용 대상과 예외는 프로젝트 기준으로 확정한다.
* 예시 문자열과 역사 archive는 링크 점검 오탐에서 제외한다.

## 피해야 할 것
* 임시 작업 메모 파일을 추가해 `active_task.md`와 충돌시키는 것
* 관찰과 추측을 구분하지 않고 장기 문서에 반영하는 것
* 기존 패턴을 확인하지 않은 채 새 추상화나 새 경로를 도입하는 것
