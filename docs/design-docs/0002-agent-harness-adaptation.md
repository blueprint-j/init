---
last-verified: {{LAST_VERIFIED}}
---

# 0002. 문서 중심 AI 하네스 적응

## 문제
외부 하네스 패턴을 그대로 복제하면 프로젝트 고유 문서 구조와 중복된 병렬 체계가 생길 수 있다.
또한 작업 기억, 완료 로그, 장기 설계 결정, path-scoped 규칙이 서로 다른 위치에 흩어져 있으면 세션 간 일관성이 약해진다.

## 결정
* 프로젝트는 `AGENTS.md` + `docs/` 중심 문서 하네스를 사용한다.
* 현재 작업은 `docs/plans/active/active_task.md` 하나로 추적한다.
* path-scoped 규칙은 `docs/agent-rules/`에, 구조는 `docs/architecture/`에, 사용자 노출 사실은 `docs/product/`에 둔다.
* 반복 가능한 절차와 교차 관심사 기억은 `docs/memory/`에 둔다.

## 영향
* 새 프로젝트에서도 같은 읽기 순서와 저장 위치를 재사용할 수 있다.
* summary layer와 canonical source가 분리돼 drift를 줄일 수 있다.
