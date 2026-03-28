# 계획 문서 운영 규칙

## 핵심 규칙
- 현재 작업의 단일 shared task spec은 `active/active_task.md`다.
- 작업 종료 시 durable한 내용만 `completed/`에 보관하고, active는 초기화한다.
- 설계 이유는 `docs/design-docs/`에 남기고, 기술 부채는 별도 추적 문서가 있을 때만 기록한다.

## 작업 흐름
1. 시작 시 `active_task.md`에 목표, 참조 문서, 완료 기준을 채운다.
2. 진행 중 판단, blocker, 새 가정을 즉시 갱신한다.
3. 종료 시 durable한 결과만 `completed/YYYY-MM.md`에 보관한다.
4. 보관이 끝나면 `active_task.md`를 비운다.

## 기록 임계값
- 구조적 설계 변경
- 반복 참조 가치가 있는 버그 수정
- 이후 작업자가 다시 찾아볼 가능성이 큰 운영 판단

## 관련 문서
- [active/active_task.md](active/active_task.md)
- [../memory/index.md](../memory/index.md)
- [../design-docs/README.md](../design-docs/README.md)
