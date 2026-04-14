# 작업 로그

## Usage
- 짧은 진행 로그, 관찰, 임시 blocker만 남긴다.
- durable한 사실이나 정책은 `docs/knowledge/` 또는 더 구체적인 canonical 문서로 승격한다.
- 새 세션을 시작할 때 오래된 항목은 정리하고 현재 세션에 필요한 로그만 유지한다.

## Entries
- 2026-04-14: `docs` 하네스 초기화 작업 시작. 루트에는 `README.md`와 `Prompt/`만 있고 `AGENTS.md`, `docs/`, 의존성 매니페스트, 테스트 구조는 확인되지 않았다.
- 2026-04-14: `Prompt/init.md`를 기준으로 4축 구조, summary layer 분리, runtime memory 재초기화 규칙을 기본 운영 기준으로 채택했다.
- 2026-04-14: `AGENTS.md`, `docs/` 4축 문서, runtime memory 문서를 생성했고 `README.md`의 `Prompt/init.md` 경로 참조를 실제 구조에 맞게 정렬했다.
