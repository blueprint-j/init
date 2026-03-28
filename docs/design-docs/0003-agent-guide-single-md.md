---
last-verified: 2026-03-28
---

# 0003. 에이전트별 단일 Guide 채택

## 문제
역할 지침이 여러 문서와 skill에 흩어지면 canonical behavior가 모호해지고 중복이 생긴다.

## 결정
- `docs/agent-rules/agent-protocol.md`는 공통 계약으로 유지한다.
- 역할별 지침은 `docs/agent-rules/` 아래 "에이전트 하나당 Markdown 하나" 원칙으로 둔다.
- `.agents/skills/*/SKILL.md`는 대응 guide만 가리키는 얇은 wrapper로 유지한다.

## 영향
- 규칙의 canonical source가 단순해진다.
- skill과 docs 사이 drift 가능성이 줄어든다.
