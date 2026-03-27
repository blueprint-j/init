# 계획 문서 운영 규칙

## 핵심 규칙
* 현재 작업의 단일 진실은 `active/active_task.md`다.
* 작업 종료 시 `active_task.md`는 항상 비운다.
* 장기적으로 남길 설계 이유는 `plans`가 아니라 `docs/design-docs/`에 남긴다.
* 구조적이거나 재참고 가치가 있는 durable 작업 요약은 `completed/`에 남긴다.

## 작업 흐름

```
시작 ──→ 진행 ──→ 종료 ──┬──→ 보관(completed/)
                         ├──→ 이월(tech-debt-tracker)
                         └──→ 승격(design-docs/ ADR)
```

| 단계 | 행동 | 전이 조건 |
| --- | --- | --- |
| 시작 | `active_task.md`에 현재 목표, 완료 기준, 관련 문서를 채운다 | 작업 지시를 받았을 때 |
| 진행 | 확인한 사실, 바뀐 판단, 막힌 부분을 `active_task.md`에 계속 갱신한다 | 구현 중 상태가 변할 때마다 |
| 종료 | 완료 기준 충족 여부를 확인하고, 기록할 durable 내용을 분류한 뒤 `active_task.md`를 비운다 | 모든 완료 기준이 충족되었을 때 |

## 완료 기록 규칙
* 파일명: `completed/YYYY-MM.md`
* 각 완료 기록은 `## YYYY-MM-DD-slug` 헤딩 아래에 추가한다.
* 최소 항목: `변경`, `이유`, `검증`, `후속`
