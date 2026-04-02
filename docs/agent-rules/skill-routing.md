---
last-verified: 2026-04-02
---

# 스킬 라우팅 가이드

## 단일 책임
요청 유형에 따라 어떤 스킬을 먼저 선택할지와, 공식 호출 이름이 무엇인지를 한 곳에서 관리한다.

## 기본 원칙
- 스킬의 실제 동작 계약은 `.agents/skills/*/SKILL.md`를 따른다.
- 이 문서는 "언제 어떤 스킬을 쓰는지"만 간단히 정리한다.
- 프로젝트 스킬의 자세한 repo-specific 규칙은 `docs/agent-rules/README.md`를 따른다.
- 저장소에 없는 별칭은 공식 호출 이름처럼 적지 않는다.
- 같은 라우팅 규칙을 다른 summary 문서에 다시 풀어쓰지 않는다.

## 프로젝트 기본 스킬

| Skill | Use when |
| --- | --- |
| `/doc-hygiene` | 문서 구조, AGENTS/README/docs 정리, canonical source 배치 판단이 필요할 때 |
| `/doc-code-drift` | 코드와 문서가 어긋났는지 점검하고 mismatch 후보를 분류할 때 |
| `/code-explorer` | 구현 전에 실제 진입점, 호출 흐름, 데이터 변환을 끝까지 추적해야 할 때 |
| `/code-architect` | 기능 구현 전에 구조와 빌드 순서를 포함한 실행 청사진을 먼저 잠글 때 |
| `/codebase-reviewer` | 큰 변경이나 저장소 전체를 findings-first로 리뷰할 때 |
| `/runtime-maintainer` | config, controller, service, registry, repository 같은 runtime wiring이 바뀔 때 |
| `/surface-maintainer` | 사용자 표면, SEO 메타, generated output, 게시 결과물이 바뀔 때 |
| `/domain-module-maintainer` | 지원 도메인 모듈을 추가하거나 기존 모듈의 등록, query, presentation을 바꿀 때 |
| `/test-maintainer` | 테스트를 추가, 재구성, 정리하면서 테스트 계층 책임을 맞출 때 |

## gstack 계획·설계 스킬

| Skill | Use when |
| --- | --- |
| `/office-hours` | 새 제품 아이디어를 검증하거나, 아직 무엇을 만들지부터 다시 정의해야 할 때 |
| `/autoplan` | CEO, 디자인, 엔지니어링 리뷰를 한 번에 자동으로 돌리고 싶을 때 |
| `/plan-ceo-review` | 문제 재정의, scope 재검토, 더 큰 제품 기회를 찾는 전략 검토가 필요할 때 |
| `/plan-eng-review` | 구현 전에 아키텍처, 데이터 흐름, 엣지 케이스, 테스트 계획을 잠글 때 |
| `/plan-design-review` | 구현 전에 UI/UX 계획을 점검하고 보완할 때 |
| `/design-consultation` | 디자인 시스템이나 브랜드 방향을 새로 잡을 때 |
| `/design-shotgun` | 화면 아이디어를 여러 시안으로 빠르게 비교하고 싶을 때 |
| `/design-html` | 승인된 디자인을 실제 HTML/CSS 결과물로 마무리할 때 |

## gstack 리뷰·디버깅·QA 스킬

| Skill | Use when |
| --- | --- |
| `/review` | 머지 전 diff에서 구조적 리스크와 prod 회귀 가능성을 찾을 때 |
| `/investigate` | 버그 원인 조사부터 해야 하는 디버깅 작업일 때 |
| `/design-review` | 이미 구현된 화면을 시각적으로 점검하고 바로 수정할 때 |
| `/qa` | 실제 브라우저로 테스트하고, 문제를 고치고, 재검증까지 할 때 |
| `/qa-only` | 브라우저 QA는 하되 수정 없이 리포트만 원할 때 |
| `/benchmark` | 성능 회귀, Web Vitals, 로드 시간, 번들 크기를 전후 비교할 때 |
| `/health` | 타입체크, 린트, 테스트 등을 묶어 코드 건강도를 점검할 때 |
| `/cso` | 보안 감사, 위협 모델링, 공급망 리스크 점검이 필요할 때 |

## gstack 브라우저·관찰 스킬

| Skill | Use when |
| --- | --- |
| `/gstack` | 사이트를 열어 직접 확인하거나 dogfooding을 시작하는 범용 브라우저 진입점이 필요할 때 |
| `/browse` | 헤드리스 브라우저로 열기, 클릭, 입력, 상태 검증만 빠르게 수행할 때 |
| `/connect-chrome` | 보이는 실제 Chrome 창을 연결해서 실시간으로 브라우저를 조작할 때 |
| `/setup-browser-cookies` | 인증된 페이지를 테스트하려고 실제 브라우저 쿠키를 가져와야 할 때 |
| `/canary` | 배포 후 production 상태를 일정 시간 감시하며 이상 징후를 볼 때 |

## gstack 안전·작업 관리 스킬

| Skill | Use when |
| --- | --- |
| `/careful` | 파괴적 명령 전에 경고 장치를 먼저 켜고 싶을 때 |
| `/freeze` | 수정 범위를 한 디렉터리로 강하게 제한하고 싶을 때 |
| `/guard` | `careful`과 `freeze`를 함께 켜서 안전 범위를 강화할 때 |
| `/unfreeze` | 디렉터리 편집 제한을 해제할 때 |
| `/checkpoint` | 지금 작업 상태를 저장하거나, 이전 작업 상태로 다시 복귀하고 싶을 때 |
| `/learn` | 과거 세션에서 남은 learnings를 검색, 정리, export하고 싶을 때 |
| `/retro` | 주간 회고나 팀별/개인별 기여 흐름을 정리할 때 |

## gstack 출하·배포·후속 정리 스킬

| Skill | Use when |
| --- | --- |
| `/ship` | 테스트, 점검, 푸시, PR 생성까지 출하 흐름을 묶어 실행할 때 |
| `/land-and-deploy` | 생성된 PR을 land하고 배포 후 상태까지 확인할 때 |
| `/setup-deploy` | 프로젝트의 배포 플랫폼, health check, 배포 명령을 처음 연결할 때 |
| `/document-release` | 출하 후 README, ARCHITECTURE, CHANGELOG 같은 문서를 동기화할 때 |
| `/gstack-upgrade` | gstack 스킬 묶음을 최신 상태로 업데이트할 때 |

## 관련 경로
- `.agents/skills/`
- `docs/agent-rules/README.md`
