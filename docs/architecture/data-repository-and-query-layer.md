---
last-verified: 2026-03-29
---

# 저장소와 쿼리 계층

## 목적
읽기 모델, query 조립, repository 책임 경계를 설명한다.

## 이 문서가 다루는 것
- query builder, repository, aggregation collaborator 사이의 read-side 책임 분리
- read model / DTO / raw record shape가 어느 계층에서 정리되는가
- cross-module fan-out이나 join 성격 조립을 어디서 멈출 것인가

## 이 문서가 다루지 않는 것
- 어떤 필드를 화면에 반드시 보여줘야 하는지에 대한 제품 약속
- 인덱싱 정책이나 canonical URL 정책
- 현재 작업에서 임시로 확인한 데이터 이슈 메모

## 핵심 규칙
- query, repository, aggregation 책임을 한 클래스에 과도하게 몰지 않는다.
- raw record shape가 있으면 canonical contract를 문서로 남긴다.
- cross-module fan-out은 별도 collaborator로 분리하는 편을 우선 검토한다.

## 이 문서에 함께 남길 항목
- repository 위치
- query builder 위치
- read model / DTO 위치
