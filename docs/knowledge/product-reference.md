---
last-verified: 2026-03-31
---

# 제품 기준

## 목적
사용자에게 실제로 드러나는 동작, 지원 범위, 공개 계약, 장기 정책을 한 곳에서 관리한다.

## 이 문서가 다루는 것
- UI, API, CLI 등 사용자 표면에서 실제로 노출되는 동작
- 지원 범위, 호환성, 공개 계약처럼 장기 유지가 필요한 정책
- 프로젝트 성격이 확인된 뒤 구체화할 제품 기준

## 이 문서가 다루지 않는 것
- service wiring, 내부 모듈 조립, 런타임 초기화 구조
- generated output을 만드는 내부 파이프라인 세부
- 현재 작업 중 임시로 확인한 현상과 blocker

## 초기화 기준
- 프로젝트 성격이 아직 확정되지 않았다면 `TODO(project-specific)` placeholder만 남기고 얇게 유지한다.
- 실제 코드나 기존 문서에서 확인된 사용자 표면 사실만 적는다.
- 내부 wiring과 구현 세부는 `docs/architecture/`에 둔다.

## TODO(project-specific)
- 사용자에게 드러나는 주요 진입면: `TODO(project-specific)`
- 지원 범위 또는 제외 범위: `TODO(project-specific)`
- 공개 계약 또는 장기 정책: `TODO(project-specific)`
