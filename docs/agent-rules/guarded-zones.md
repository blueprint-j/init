---
last-verified: {{LAST_VERIFIED}}
---

# 보호 구역 규칙

## 적용 범위
* `{{GUARDED_PATHS}}`

## 핵심 규칙
* 환경 파일, 배포 설정, generated output, lockfile, schema, migration, 운영 인프라 경로는 승인 없이 넓게 수정하지 않는다.
* generated file인지 source of truth인지 먼저 확인한다.
* 삭제, 대규모 이동, 재생성은 영향 범위를 확인한 뒤 진행한다.

## 기본 예시
* `.env*`
* `deploy/`
* `infra/`
* `migrations/`
* `dist/`, `build/`
* `coverage/`
