---
last-verified: 2026-03-28
---

# Data Repository And Query Layer

## 목적
읽기 모델, query 조립, repository 책임 경계를 설명한다.

## 핵심 규칙
- query, repository, aggregation 책임을 한 클래스에 과도하게 몰지 않는다.
- raw record shape가 있으면 canonical contract를 문서로 남긴다.
- cross-module fan-out은 별도 collaborator로 분리하는 편을 우선 검토한다.

## 이 프로젝트에서 채워 넣을 항목
- repository 위치: `{{REPOSITORY_PATHS}}`
- query builder 위치: `{{QUERY_PATHS}}`
- read model / DTO 위치: `{{READ_MODEL_PATHS}}`
