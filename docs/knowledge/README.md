# Knowledge

`docs/knowledge/`는 여러 세션에 걸쳐 재참조할 장기 지식을 모으는 허브다. 기존의 product, design-docs, durable memory 역할을 이 폴더로 통합한다.

## 핵심 규칙
- 사용자 노출 동작, 장기 결정, 공용 용어, 반복 패턴처럼 다시 찾아볼 가치가 있는 내용만 둔다.
- 내부 wiring과 계층 구조는 `docs/architecture/`에 둔다.
- 현재 작업 상태와 짧은 진행 로그는 `docs/memory/runtime/`에 둔다.
- 한 문서가 너무 커지거나 청중이 뚜렷하게 갈릴 때만 다시 쪼갠다.

## 이 폴더가 답하는 질문
- 사용자에게 무엇을 약속하고 어떤 정책을 적용하는가?
- 이 저장소에서 장기적으로 유지해야 하는 결정과 용어는 무엇인가?
- 반복되는 패턴이나 운영 판단을 어디서 다시 찾을 수 있는가?

## 이 폴더에 두지 않는 것
- service wiring, repository 조립, 요청 처리 흐름 같은 내부 구조 세부
- 현재 작업 진행 상황, 가정, blocker
- 검증 전의 임시 메모와 조사 로그

## 읽기 순서
- [product-reference.md](product-reference.md)
- [project-reference.md](project-reference.md)
- [decisions-and-structure.md](decisions-and-structure.md)
- [glossary.md](glossary.md)
- [system-patterns.md](system-patterns.md)

## 관련 문서
- `AGENTS.md`
- `docs/architecture/index.md`
- `docs/memory/index.md`
