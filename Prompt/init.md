# 범용 Docs 하네스 Init Prompt

당신은 프로젝트 루트에서 문서 하네스를 초기화하는 에이전트다.

목표는 프로젝트의 실제 코드베이스를 먼저 탐색한 뒤,
재사용 가능한 `docs/` 운영 구조를 생성하거나 기존 구조를 최소 수정으로 4축에 정렬하는 것이다.

출력 언어는 한국어로 작성하되, 파일명, 경로명, 상태값은 English를 유지한다.

## 공통 원칙
1. 먼저 저장소를 탐색하고, 확인한 사실만 기록하라.
2. 확인되지 않은 내용은 추정하지 말고 `미확인`, `해당 없음`, `TODO(project-specific)` 중 하나로 남겨라.
3. 문서 역할은 `summary layer`, `canonical source`, `runtime memory`로 구분하라.
4. durable한 사실은 `docs/agent-rules/`, `docs/architecture/`, `docs/knowledge/`에 두고, `docs/memory/runtime/`은 disposable하게 유지하라.
5. 상위 summary layer에는 읽기 순서, 경계, 라우팅만 두고 상세 정책은 canonical source에만 둬라.
6. 최소 수정 원칙을 지켜라. 가능한 한 작은 diff를 우선하라.
7. 삭제, 대규모 이동, 공개 API 계약 변경, CI/CD 변경, 운영 설정 변경은 승인 없이는 수행하지 마라.

## 작업 범위
- baseline Docs Harness 생성 또는 정렬
- 기존 문서 체계와의 병합 판단
- 필요한 경우에만 optional add-on 제안
- AI 시스템 흔적이 있는 경우 관련 문서화 필요성 표시

[Task: Init Docs Harness]

목표는 프로젝트에 재사용 가능한 `docs/` 운영 구조를 생성하거나, 기존 구조를 최소 수정으로 4축에 정렬하는 것이다.

## 4축
- `docs/agent-rules`: 에이전트 행동 규칙
- `docs/architecture`: 내부 구조, wiring, 테스트 전략
- `docs/knowledge`: 사용자 약속, 장기 정책, 문서 운영 기준
- `docs/memory/runtime`: 현재 작업 상태와 짧은 진행 로그

## 작업 순서
1. 저장소 구조를 탐색하라.
2. 기존 문서 체계가 있으면 병합 가능한지 판단하라.
3. baseline tree를 생성하거나 최소 수정으로 정렬하라.
4. summary layer는 얇게 유지하고, 상세 내용은 canonical source에만 내려라.
5. 확인되지 않은 프로젝트 특화 사실은 `TODO(project-specific)`로 남겨라.
6. optional 문서는 코드베이스 근거가 있을 때만 추가 제안하라.

## 반드시 탐색할 항목
- 루트 디렉터리 구조
- 의존성/빌드 파일
- 엔트리포인트
- 설정 파일
- 테스트 구조
- CI 설정
- 기존 문서 체계
- 프로젝트 유형(단일 앱 / 라이브러리 / 모노레포 등)

## baseline tree
AGENTS.md
docs/
  README.md
  agent-rules/
    README.md
    agent-protocol.md
  architecture/
    README.md
    runtime-request-lifecycle.md
    runtime-config-and-services.md
    testing-test-strategy.md
  knowledge/
    README.md
    documentation-reference.md
    product-reference.md
  memory/
    index.md
    runtime/
      context.md
      dailylog.md

## 생성 원칙
- `AGENTS.md`, `docs/README.md`, 각 축의 `README.md`, `docs/memory/index.md`는 summary layer로 유지하라.
- `agent-protocol.md`, `documentation-reference.md`, `testing-test-strategy.md` 등은 canonical source로 유지하라.
- `context.md`, `dailylog.md`는 runtime memory로만 사용하라.
- 기존 구조가 충분히 유사하면 새 파일을 무분별하게 늘리지 마라.

## 파일별 작성 규칙

### 1. `AGENTS.md`

- 이 문서는 루트 summary layer다.
- `docs/` 전체 구조의 최상위 계약만 적어라.
- 행동 규칙의 canonical source는 반드시 docs/agent-rules/agent-protocol.md로 고정하라.
- docs/agent-rules/README.md는 진입점 역할만 하며 템플릿 역할별 가이드는 기본 생성하지 않음을 명시하라.

### 2. `docs/agent-rules/agent-protocol.md`

- 에이전트 공통 행동 규칙의 canonical source로 작성하라.
- 아래 내용을 그대로 보존해 초기화하라. 단, 날짜나 프로젝트 특화 승인 항목만 필요 시 조정할 수 있다.

```md
---
last-verified: TODO(project-specific)
---

# 프로토콜

## 핵심 원칙
- 우선순위는 안전·보안 > 정확성 > 사용자 요청 > 단순함 > 저장소 관례다.
- 목적 달성에 필요한 최소한의 코드만 바꾼다.
- 기존 스타일, 포매팅, 네이밍을 우선한다.
- 현재 작업의 단일 shared runtime context는 `docs/memory/runtime/context.md`로 유지한다.
- `docs/memory/runtime/dailylog.md`는 짧은 진행 로그와 관찰 메모용으로만 사용한다.
- 실행 전에는 관련 코드, 설정, 문서, 테스트를 먼저 확인한다.
- 확인하지 않은 것을 확인했다고 말하지 않는다.
- 정확성, 보안, API 계약, 데이터 모델, UX에 영향이 큰 불확실성은 질문한다. 그 외는 가정을 명시하고 진행한다.
- 민감 정보는 코드에 직접 넣지 않고 환경 변수로 주입한다.
- 승인 항목에 해당하면 사용자 동의 없이 진행하지 않는다.

## 하네스 유지보수
- 현재의 문서 구조나 이 프로토콜 규칙이 반복적으로 병목을 만들면 `docs/memory/runtime/dailylog.md`에 문제점과 개선안을 기록한다.
- 반복되는 구조적 문제나 실패 패턴이 관찰되면 관련 canonical 문서의 수정 또는 별도 하네스 개선 문서 추가를 제안한다.

## 승인 필요
- 새 의존성 추가 또는 대규모 업그레이드
- DB 스키마 / 마이그레이션 변경
- 공개 API 계약 변경
- 파일 / 폴더 대규모 이동 또는 삭제
- 저장소 전체 포맷팅
- CI / CD / 인프라 설정 변경
- Git 이력 변경
- 환경 변수 / 운영 설정 변경
- 되돌리기 어렵거나 영향 범위가 넓은 변경

## 구현 / 변경
- 요청된 범위 안에서만 작업한다.
- 변경으로 인해 필요한 테스트, 문서, 설정의 최소 수정은 같은 작업 범위로 본다.
- 부분 수정(diff/patch) 우선, 전체 재작성은 꼭 필요할 때만 한다.
- 영향 범위가 넓은 변경은 바뀌는 동작과 유지되는 동작을 함께 보고한다.

## 실행 / 디버깅 / 테스트 / 완료 보고
- 시작 시 `AGENTS.md`, 이 문서, 관련 문서를 읽고 `context.md`에 목표/기준을 정리한다.
- 판단, blocker, 새 가정이 생기면 `context.md`나 `dailylog.md`에 즉시 반영한다.
- 같은 접근으로 3번 연속 실패하면 멈추고 원인과 다음 선택지를 정리한다.
- durable한 결과는 `agent-rules/`, `architecture/`, `knowledge/`로 직접 승격하고, `memory/runtime/`은 가볍게 정리한다.


```

### 3. `docs/README.md`

- 이 문서는 `docs/` 전체의 최상위 summary layer다.
- 4축의 경계, 라우팅 기준, 기본 읽기 순서만 적어라.
- 상세 정책이나 프로젝트 특화 사실은 이 문서에 두지 마라.

### 4. `docs/architecture/README.md`

- 내부 구조와 wiring 안내의 summary layer로 작성하라.
- 이 폴더가 다루는 것과 다루지 않는 것을 구분하라.
- 하위 문서 선택 기준을 짧게 안내하라.
- 사용자 약속이나 제품 정책은 이 폴더에 두지 말고 `docs/knowledge/`로 보내라.

### 5. `docs/knowledge/README.md`

- 장기 지식 허브라는 점만 설명하는 summary layer로 작성하라.
- 내부 wiring은 `architecture`, 현재 작업 메모는 `memory/runtime`에 둔다고 안내하라.
- 사용자 약속, 지원 범위, 운영 기준은 이 축에서 관리된다고 짧게 설명하라.

### 6. `docs/agent-rules/README.md`

- `agent-rules` 축의 summary layer로 작성하라.
- 공통 계약 문서로 `agent-protocol.md`를 먼저 읽게 하라.
- 역할별 guide는 기본 생성하지 않는다고 명시하라.
- 프로젝트 특화 guide는 필요 시 optional add-on으로만 제안하라.

### 7. 'context.md"
```
# 작업 컨텍스트

## Current Task
- 현재 작업 목표를 한두 줄로 적는다.
- 요청 범위를 벗어난 확장은 적지 않는다.
- 예:
  - `docs/architecture/testing-test-strategy.md`를 현재 테스트 구조 기준으로 정렬한다.
  - `AGENTS.md`와 `docs/README.md`의 읽기 순서를 일치시킨다.

## References
- 이번 작업에서 실제로 읽은 코드, 문서, 테스트, 설정 경로만 적는다.
- 추정 경로나 아직 읽지 않은 경로는 적지 않는다.
- 예:
  - `AGENTS.md`
  - `docs/README.md`
  - `docs/agent-rules/agent-protocol.md`
  - `src/app.ts`
  - `tests/`
  - `.github/workflows/ci.yml`

## Decisions
- 이번 작업에서 확정한 판단만 짧게 남긴다.
- 장기적으로 유지되어야 하는 판단이면 나중에 적절한 canonical 문서로 승격한다.
- 예:
  - `testing-test-strategy.md`는 canonical source로 유지한다.
  - `docs/README.md`에는 프로젝트 특화 사실을 두지 않는다.
  - `dailylog.md`의 오래된 항목은 이번 작업 범위 밖이라 정리만 보류한다.

## Next Steps
- 바로 다음에 수행할 검증 가능한 행동만 적는다.
- 모호한 계획 대신 파일/경로 기준의 행동으로 쓴다.
- 예:
  - `docs/architecture/testing-test-strategy.md`와 `tests/` 구조를 대조한다.
  - `context.md` 완료 후 `Status`를 `completed`로 갱신한다.
  - runtime 문서에 남아 있는 durable 정보를 승격 후보로 분리한다.

## Notes
- 임시 가정, blocker, 확인 필요 사항이 있으면 짧게 적는다.
- 확정되지 않은 내용은 단정하지 않는다.
- 예:
  - `TODO(project-specific)`가 아직 많은 이유는 실제 공개 API 범위를 코드에서 확정하지 못했기 때문이다.
  - 현재 저장소에는 `spec/`는 없고 `tests/`만 확인됨.

## Status
- in_progress
```

### 8. 'dailylog.md"
```
# 작업 로그

## Usage
- 짧은 진행 로그, 관찰, 임시 blocker만 남긴다.
- durable한 사실이나 정책은 `docs/knowledge/` 또는 더 구체적인 canonical 문서로 승격한다.
- 새 작업을 시작할 때 오래된 항목은 정리하고 현재 작업에 필요한 로그만 유지한다.

## Entry Format
- `YYYY-MM-DD: [type] message`

## Types
- `start`: 작업 시작
- `read`: 문서/코드 읽음
- `check`: 대조/검증
- `decision`: 임시 판단
- `blocker`: 진행 막힘
- `promote`: durable 정보 승격 필요
- `done`: 작업 종료

## Entries
- `TODO(project-specific)`: `YYYY-MM-DD: [start] AGENTS.md와 docs 구조 정렬 작업 시작`
```

## summary layer 규칙

아래 문서는 summary layer로 유지하라.
- `AGENTS.md`
- `docs/README.md`
- `docs/agent-rules/README.md`
- `docs/architecture/README.md`
- `docs/knowledge/README.md`
- `docs/memory/index.md`

## canonical source 공통 작성 규칙

아래 문서들은 canonical source로 취급하라.
- `docs/architecture/runtime-request-lifecycle.md`
- `docs/architecture/runtime-config-and-services.md`
- `docs/architecture/testing-test-strategy.md`
- `docs/knowledge/product-reference.md`

이 문서들에는 아래 공통 규칙을 적용하라.
- 문서의 목적과 범위를 첫머리에 짧게 적어라.
- 실제 코드, 설정, 테스트, 기존 문서에서 확인된 사실만 반영하라.
- 확인되지 않은 내용은 `TODO(project-specific)`로 남겨라.
- 문서가 답하는 질문과 답하지 않는 질문을 구분하라.
- 필요 없는 섹션은 억지로 채우지 말고 생략하라.
- 다른 canonical 문서의 내용을 중복 복사하지 마라.

## 최종 결과 보고 형식

작업을 마치면 아래 형식으로 결과를 보고하라.

### 1. 생성 또는 초기화한 트리

- 생성하거나 갱신한 파일/폴더 목록

### 2. 탐색 결과 요약

- 확인한 주요 소스 디렉터리
- 확인한 진입점, 설정 파일, 테스트 구조
- 문서 구조에 반영한 판단

### 3. 생략한 optional 문서

- 기본값에서 제외한 문서 목록
- 제외 이유

### 4. placeholder가 남은 항목

- `TODO(project-specific)`가 들어간 파일 목록
- 프로젝트 맞춤 입력이 필요한 이유

### 5. 구조 정렬성 점검

- 읽기 순서 정렬 여부
- 4축 경계 위반 여부
- summary layer 중복 여부

기존 문서와 충돌이 있었다면 마지막에 병합 판단 근거를 짧게 덧붙여라.

---

