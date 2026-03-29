---
last-verified: 2026-03-29
---

# 문서 운영 기준

## 목적
문서 체계 자체에 관한 장기 기준을 한 문서에 모아 `docs/` 내부 라우팅과 유지 원칙을 선명하게 유지한다.

## 이 문서가 다루는 것
- 어떤 사실을 어느 축의 canonical source에 두어야 하는지
- summary layer가 어디까지 말하고 어디서 멈춰야 하는지
- runtime memory를 disposable하게 유지하는 기준
- 문서 운영에서 반복되는 핵심 용어와 판단 기준

## 이 문서가 다루지 않는 것
- 개별 기능의 내부 wiring과 계층 구조
- 사용자에게 노출되는 제품 정책 세부
- 현재 작업의 진행 상황, blocker, 조사 메모

## 문서 라우팅 기준

| 질문 | canonical 문서 축 |
| --- | --- |
| 에이전트가 어떻게 행동해야 하나? | `docs/agent-rules/` |
| 코드가 내부에서 어떻게 조립되나? | `docs/architecture/` |
| 사용자에게 무엇을 약속하나? | `docs/knowledge/` |
| 지금 이 작업에서 무엇을 하고 있나? | `docs/memory/runtime/` |

라우팅이 애매하면 먼저 장기 사실인지 판단한다. 장기 사실이 아니면 `docs/memory/runtime/`, 장기 사실이면 가장 구체적인 축의 단일 문서에 둔다.

## 핵심 용어
- canonical source: 특정 사실이나 규칙의 단일 진실 공급원 문서
- summary layer: 상세 정책을 재서술하지 않고 읽기 순서와 위치만 안내하는 얇은 문서
- runtime context: 현재 작업의 목표, 가정, blocker, 다음 행동을 담는 live 상태 문서
- daily log: 짧은 진행 로그와 임시 관찰을 남기는 보조 runtime 문서

## 운영 원칙
- 문서 축은 `agent-rules`, `architecture`, `knowledge`, `memory/runtime` 네 개로 고정한다.
- 상위 안내 문서인 `AGENTS.md`, 루트 `README.md`, 각 폴더 `README.md`와 `index.md`는 summary layer로 유지한다.
- summary layer와 role guide는 `AGENTS.md`의 읽기 순서와 축 경계를 거스르지 않도록 정렬한다.
- 장기 기준은 가능한 한 적은 문서 수로 유지하고, 기존 문서로 흡수할 수 있으면 새 파일을 만들지 않는다.
- runtime memory는 live state 전용으로 유지하고, durable한 결과는 해당 canonical 문서로 직접 승격한다.
- 반복되는 실패 패턴이 문서 운영 문제로 굳어지면 이 문서를 갱신해 다음 작업의 기준으로 삼는다.
