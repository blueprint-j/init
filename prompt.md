# 범용 Docs 하네스 Init Prompt

아래 프롬프트를 새 프로젝트의 에이전트에게 그대로 전달해, `docs/` 문서 하네스를 생성하고 초기화하라.

---

당신은 프로젝트 루트에서 문서 하네스를 초기화하는 에이전트다.

목표는 범용 프로젝트에서 재사용 가능한 `docs/` 운영 구조를 생성하는 것이다. 이 구조는 다음 4축을 기준으로 문서를 분리한다.

- `docs/agent-rules`: 에이전트 행동 규칙
- `docs/architecture`: 내부 구조, wiring, 테스트 구조
- `docs/knowledge`: 사용자 약속, 장기 정책, 문서 운영 기준
- `docs/memory/runtime`: 현재 작업 상태와 짧은 진행 로그

출력 언어는 한국어로 작성하되, 파일명과 경로명은 영어를 유지한다.

## 작업 원칙

1. 먼저 현재 프로젝트의 코드베이스와 파일 구조를 탐색하라.
2. 이미 문서 체계가 있으면 충돌 없이 병합 가능한지 판단하라.
3. 기존 문서를 불필요하게 지우지 말고, 최소 수정으로 4축 구조에 정렬시켜라.
4. 문서 구조는 템플릿을 기계적으로 복제하지 말고, 코드베이스에서 실제로 필요한 수준만 남겨라.
5. 세부 정책은 가장 구체적인 canonical source에만 두고, 상위 안내 문서는 summary layer로 유지하라.
6. 프로젝트별 사실을 임의로 단정하지 말고 `TODO(project-specific)` placeholder로 남겨라.
7. 웹, SEO, 도메인 모듈, 특정 런타임에 치우친 문서는 코드베이스에서 실제 필요가 확인될 때만 추가하라.
8. optional 문서를 추가했다면 왜 필요한지 결과 보고에 적어라.

## 탐색 단계

작업을 시작하면 먼저 아래를 확인하라.

- 루트에 이미 `AGENTS.md`, `README.md`, `docs/`가 있는가
- 소스 코드는 주로 어느 디렉터리에 있는가
- 엔트리포인트, 설정 파일, 의존성 매니페스트, 테스트 디렉터리, 빌드 파일이 어디에 있는가
- 현재 프로젝트가 단일 애플리케이션인지, 라이브러리인지, 다중 패키지인지
- 기존 문서가 있다면 어떤 문서가 행동 규칙, 아키텍처, 장기 정책, 현재 작업 메모를 담당하는가
- 현재 프로젝트가 아주 작은 저장소인지, 아니면 장기 운영이 필요한 저장소인지

탐색 시에는 최소한 아래 종류를 확인하라.

- 루트 디렉터리 구조
- 의존성/빌드 파일 예: `package.json`, `pyproject.toml`, `go.mod`, `Cargo.toml`, `pom.xml`
- 실행 진입점 예: 앱 시작 파일, 서버 엔트리, CLI 엔트리
- 설정 파일 예: 환경설정, 라우팅, 서비스 등록, 배포 설정
- 테스트 관련 구조 예: `tests/`, `spec/`, `__tests__/`, CI 설정

기존 구조가 이미 충분히 유사하면 새 파일을 무분별하게 늘리지 말고, 필요한 파일만 추가하라.
프로젝트가 매우 작거나 단순하면 하위 문서의 본문을 더 얇게 유지하라.
프로젝트가 복잡하거나 다중 계층이면 탐색 결과에 따라 optional add-on 문서를 제안하라.

## 생성 대상 트리

기본적으로 아래 파일과 폴더를 생성하거나 초기화하라.

```text
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
```

## 파일별 작성 규칙

### 1. `AGENTS.md`

- 이 문서는 루트 summary layer다.
- `docs/` 전체 구조의 읽기 순서와 경계만 적어라.
- 행동 규칙의 canonical source는 반드시 `docs/agent-rules/agent-protocol.md`로 고정하라.
- 기본 읽기 순서는 `docs/agent-rules/agent-protocol.md` → `docs/README.md` → 관련 축의 시작 문서 → 현재 작업이면 `docs/memory/runtime/context.md` 순으로 안내하라.
- 4축 각각이 소유하는 것과 시작 문서를 짧게 구분하라.
- 작업 유형별 빠른 읽기 경로를 넣되, 실제 존재하는 문서만 참조하라.

### 2. `docs/README.md`

- 이 문서는 `docs/` 전체의 최상위 summary layer다.
- 4축의 경계, 라우팅 기준, 기본 읽기 순서만 적어라.
- 상세 정책이나 프로젝트 특화 사실은 이 문서에 두지 마라.

### 3. `docs/agent-rules/README.md`

- `agent-rules` 축의 진입점 역할만 하게 하라.
- 공통 계약 문서로 `agent-protocol.md`를 먼저 읽게 하라.
- 이 템플릿은 역할별 guide를 기본 생성하지 않는다고 명시하라.
- 프로젝트에 특화된 guide가 필요할 때만 후속 추가 대상으로 남겨라.

### 4. `docs/agent-rules/agent-protocol.md`

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

## 실행 / 디버깅
- 시작 시 `AGENTS.md`, 이 문서, 관련 canonical 문서를 읽고 `docs/memory/runtime/context.md`에 현재 목표와 완료 기준을 정리한다.
- 판단, blocker, 새 가정이 생기면 `context.md`나 `dailylog.md`에 즉시 반영한다.
- 작업을 검증 가능한 목표로 전환한다.
- 가능하면 작게 바꾸고 바로 검증한다.
- 같은 접근으로 3번 연속 실패하면 멈추고 원인과 다음 선택지를 정리한다.
- 반복되는 실패 패턴은 `docs/agent-rules/` 또는 `docs/knowledge/documentation-reference.md` 갱신 대상으로 본다.

## 테스트 / 완료 보고
- 퍼블릭 인터페이스와 기대 동작 중심으로 검증한다.
- 관련 테스트를 우선 실행하고, 이후 필요 시 범위를 넓힌다.
- live 문서를 바꿨다면 관련 검증 도구나 체크리스트가 있을 때만 함께 점검한다.
- durable한 결과는 `docs/agent-rules/`, `docs/architecture/`, `docs/knowledge/`로 직접 승격하고, `docs/memory/runtime/`은 다음 작업을 위해 가볍게 정리한다.
- 실행하지 못한 항목은 `미검증`으로 분리한다.
```

- 이 템플릿은 `agent-protocol.md`만 기본 생성하고, 추가 role guide는 필요할 때만 optional로 제안하라.

### 5. `docs/architecture/README.md`

- 내부 구조와 wiring 안내의 summary layer로 작성하라.
- 이 폴더가 다루는 것과 다루지 않는 것을 구분하라.
- 하위 문서 선택 기준을 짧게 안내하라.
- 사용자 약속이나 제품 정책은 이 폴더에 두지 말고 `docs/knowledge/`로 보내라.
- 실제 코드베이스를 탐색한 결과, 요청 흐름/설정/테스트 외에 별도 축이 필요하지 않으면 기본 문서만 유지하라.

### 6. `docs/architecture/runtime-request-lifecycle.md`

- 요청이나 작업 흐름이 어떤 진입점에서 시작해 어떤 계층을 거쳐 응답 또는 결과로 이어지는지 설명하는 자리로 초기화하라.
- 현재 프로젝트에 구체적인 런타임 정보가 없으면 일반 구조와 `TODO(project-specific)` anchor만 남겨라.
- 엔트리포인트, 라우팅, CLI, 작업 큐, 배치 잡 등 실제 코드 경로를 탐색한 뒤 그 결과에 맞게 서술하라.

### 7. `docs/architecture/runtime-config-and-services.md`

- 설정값, 컨테이너, 서비스 wiring, 조립 지점을 기록하는 문서로 초기화하라.
- 특정 프레임워크의 DI 구조를 추정해 적지 말고, 필요한 섹션만 만들어 두어라.
- 실제 설정 파일, 서비스 등록 지점, 의존성 주입 패턴이 확인된 경우에만 반영하라.

### 8. `docs/architecture/testing-test-strategy.md`

- 테스트 책임 분리와 기본 검증 전략의 canonical source로 초기화하라.
- 단위 테스트, 통합 테스트, 엔드투엔드 또는 시스템 테스트를 어떻게 나눌지 범용적으로 정리하라.
- 실제 도구명은 확인된 경우에만 적고, 그렇지 않으면 `TODO(project-specific)`로 남겨라.
- 테스트 디렉터리와 CI 구성을 탐색한 결과를 반영하라.

### 9. `docs/knowledge/README.md`

- 장기 지식 허브라는 점만 설명하는 summary layer로 작성하라.
- 내부 wiring은 `architecture`, 현재 작업 메모는 `memory/runtime`에 둔다고 안내하라.

### 10. `docs/knowledge/documentation-reference.md`

- 문서 운영 기준의 canonical source로 작성하라.
- 아래 개념은 반드시 포함하라.
  - canonical source
  - summary layer
  - runtime context
  - daily log
  - 문서 라우팅 기준
- 문서 축은 `agent-rules`, `architecture`, `knowledge`, `memory/runtime` 네 개로 고정하라.
- summary layer 목록은 실제 구조 기준으로 적어라: `AGENTS.md`, `docs/README.md`, `docs/agent-rules/README.md`, `docs/architecture/README.md`, `docs/knowledge/README.md`, `docs/memory/index.md`.

### 11. `docs/knowledge/product-reference.md`

- 사용자에게 드러나는 동작, 지원 범위, 장기 정책을 기록하는 자리로 초기화하라.
- 프로젝트 성격이 아직 확정되지 않았다면 매우 얇게 작성하고 `TODO(project-specific)` placeholder를 남겨라.
- 내부 wiring이나 임시 작업 메모는 여기에 두지 마라.
- 실제 사용자 표면, 공개 API, 지원 범위가 코드나 기존 문서에서 확인된 경우에만 구체화하라.

### 12. `docs/memory/index.md`

- live runtime memory 계층이라는 점만 설명하라.
- durable한 사실은 장기 문서로 승격하고, runtime 문서는 disposable하게 유지한다고 적어라.
- 이 축의 시작 문서는 `index.md`를 유지한다고 명시하라.

### 13. `docs/memory/runtime/context.md`

- 현재 작업의 단일 상태 문서로 초기화하라.
- 아래 기본 섹션을 넣어라.
  - `Current Task`
  - `References`
  - `Decisions`
  - `Next Steps`
- 문서 맨 마지막에는 반드시 `Status` 섹션을 두고 현재 상태값을 명시하라.
- 상태값은 최소한 `in_progress` 또는 `completed` 중 하나를 사용하라.
- 작업 중에는 `in_progress`, 작업 완료 후 정리 단계에서는 `completed`로 갱신하라.

### 14. `docs/memory/runtime/dailylog.md`

- 짧은 진행 로그와 임시 관찰 메모용으로 초기화하라.
- 장기 기록 저장소처럼 쓰지 않도록 안내 문구를 넣어라.

## summary layer 규칙

아래 문서는 summary layer로 유지하라.

- `AGENTS.md`
- `docs/README.md`
- `docs/agent-rules/README.md`
- `docs/architecture/README.md`
- `docs/knowledge/README.md`
- `docs/memory/index.md`

summary layer에서는 아래만 말하라.

- 이 문서가 어떤 축의 진입점인지
- 무엇을 어디에서 읽어야 하는지
- 어떤 문서가 canonical source인지

summary layer에서 아래는 하지 마라.

- 상세 정책 재서술
- 프로젝트 특화 사실 단정
- 다른 canonical 문서의 내용을 중복 복사

## 기본 제외 대상

아래는 기본 생성 대상에서 제외하라.

- 도메인 모듈 전용 문서
- SEO, robots, sitemap 관련 문서
- repository/query 세부 문서
- 배포 파이프라인 전용 문서
- 역할별 role guide 문서
- 로컬 스킬 폴더나 에이전트 플러그인 설정
- docs audit 스크립트

이 항목들은 실제 프로젝트에서 필요할 때만 optional add-on으로 제안하라.

## optional add-on 예시

필요 시에만 아래 문서를 추가 제안하라.

- `docs/architecture/data-domain-module-system.md`
- `docs/architecture/data-adding-a-domain-module.md`
- `docs/architecture/data-repository-and-query-layer.md`
- `docs/architecture/publishing-seo-and-sitemaps.md`
- `docs/agent-rules/<project-specific-guide>.md`
- `.agents/skills/<project-specific-skill>/`

추가 제안 시에는 "왜 이 프로젝트에 필요한지"를 한 줄로 설명하라.

## 작성 스타일

- 문서는 짧고 명확하게 작성하라.
- 기존 저장소 관례가 없으면 과도한 세부 대신 구조와 경계 위주로 초기화하라.
- 확인되지 않은 기술 스택, 서비스 이름, 사용자 정책을 추측해서 넣지 마라.
- placeholder는 반드시 `TODO(project-specific)` 형식을 사용하라.
- 탐색 결과로 확인한 사실과 추정한 내용을 구분하라.

## 완료 체크리스트

작업이 끝나기 전에 아래를 점검하라.

1. 루트에 `AGENTS.md`와 `docs/` 4축 구조가 생성되었는가
2. `docs/README.md`가 4축 경계와 라우팅 기준을 안내하는 최상위 지도 역할을 하는가
3. `AGENTS.md`와 각 축의 시작 문서가 실제 존재하는 파일을 가리키는가
4. summary layer 문서들이 상세 정책 대신 읽기 순서와 경계만 안내하는가
5. 세부 정책이 더 구체적인 canonical source로 내려가 있는가
6. 프로젝트 특화 사실이 `TODO(project-specific)` 없이 단정되어 있지 않은가
7. `context.md`와 `dailylog.md`가 disposable runtime memory 용도로 초기화되었는가
8. `context.md`의 맨 마지막 `Status` 값이 현재 상태를 정확히 반영하는가
9. optional 문서를 기본값으로 생성하지 않았는가
10. 코드베이스 탐색 결과가 아키텍처, 테스트, 사용자 표면 문서에 반영되었는가

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

이 프롬프트의 목적은 범용 프로젝트에서 재사용 가능한 문서 운영 하네스를 빠르게 세팅하는 것이다. 프로젝트 고유 사실은 얇은 placeholder로 남기고, 코드베이스를 먼저 탐색한 뒤 그 구조에 맞는 문서 체계를 선택하라.
