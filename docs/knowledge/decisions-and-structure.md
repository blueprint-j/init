---
last-verified: 2026-03-29
---

# Decisions And Structure

## 문서 라우팅 기준

| 질문 | canonical 문서 축 |
| --- | --- |
| "에이전트가 어떻게 행동해야 하나?" | `docs/agent-rules/` |
| "코드가 내부에서 어떻게 조립되나?" | `docs/architecture/` |
| "사용자에게 무엇을 약속하나?" | `docs/knowledge/` |
| "지금 이 작업에서 무엇을 하고 있나?" | `docs/memory/runtime/` |

라우팅이 애매하면 먼저 현재 작업 메모인지, 장기 참조 지식인지, 내부 구조인지, 행동 규칙인지를 나눠 본다.

## 결정 1. 문서 축은 네 개로 고정한다
### 문제
운영 규칙, 내부 구조, 사용자 노출 정책, 현재 작업 상태가 한곳에 섞이면 drift가 쉽게 생긴다.

### 결정
- 공통 행동 규칙은 `docs/agent-rules/`에 둔다.
- 내부 구조와 wiring은 `docs/architecture/`에 둔다.
- 장기 참조 지식은 `docs/knowledge/`에 둔다.
- 현재 작업 상태는 `docs/memory/runtime/`에만 둔다.

### 영향
- 문서의 역할이 선명해지고, 같은 사실을 여러 계층에 다시 적을 필요가 줄어든다.

## 결정 2. runtime memory는 live state 전용으로 유지한다
### 문제
작업 로그와 장기 지식이 같은 계층에 쌓이면 stale한 메모가 canonical source처럼 남는다.

### 결정
- 현재 작업의 단일 상태 문서는 `docs/memory/runtime/context.md`다.
- 짧은 진행 로그와 관찰은 `docs/memory/runtime/dailylog.md`에만 둔다.
- 완료 기록용 별도 archive는 두지 않고, durable한 결과는 해당 canonical 문서로 직접 승격한다.

### 영향
- 현재 상태와 장기 사실의 경계가 분명해지고, 작업 종료 후 정리 비용이 줄어든다.

## 결정 3. 장기 참조 지식은 `knowledge`로 통합한다
### 문제
product, design-docs, semantic memory가 나뉘어 있으면 관련 내용을 찾으려 여러 폴더를 왕복하게 된다.

### 결정
- 사용자 노출 정책, 장기 설계 결정, 용어집, 반복 패턴은 `docs/knowledge/`로 통합한다.
- product 관련 세부 문서는 우선 `product-reference.md` 한 문서로 합친다.
- 기존 ADR과 durable memory 내용은 구조 결정을 설명하는 현재 문서와 보조 reference 문서로 흡수한다.

### 영향
- 프로젝트 장기 기억을 찾는 진입점이 단순해지고, 병합 가능한 문서 수가 줄어든다.

## 결정 4. summary layer는 얇게 유지한다
### 문제
상위 안내 문서가 상세 정책을 다시 풀어쓰면 canonical source와 쉽게 어긋난다.

### 결정
- `AGENTS.md`, 루트 `README.md`, 각 폴더의 `README.md`와 `index.md`는 원문 위치를 안내하는 얇은 층으로 유지한다.
- 행동 규칙은 role guide 하나당 Markdown 하나 원칙을 지킨다.

### 영향
- 규칙의 진실 공급원이 단순해지고, drift 점검이 쉬워진다.
