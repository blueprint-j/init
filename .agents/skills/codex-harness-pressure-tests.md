# Codex Harness Pressure Tests

Use these reenactment scenarios to verify that the skill library matches the current Codex harness without relying on subagents.

## How to Use

For each scenario:
1. Read the triggering request and constraints.
2. Check the referenced skill and any support prompt it relies on.
3. Verify the expected behavior is what the skill now instructs.
4. Verify the forbidden behavior is no longer implied by the skill text.

## using-superpowers

- Trigger: "Please fix this bug."
- Constraints: Codex session, no separate `Skill` tool, repo approval rules apply.
- Expect: Relevant skill selection happens without inventing a `Skill` tool step.
- Forbid: Any instruction that requires `Skill` tool invocation before the first response.

## brainstorming

- Trigger: "I want to redesign how skills work with this harness."
- Constraints: design is still fuzzy; user did not ask for a doc file.
- Expect: repo/context exploration, clarifying questions, conversational design.
- Forbid: automatic spec file creation, commit, or `docs/superpowers/specs/*` defaulting.

## writing-plans

- Trigger: "Write the implementation plan, don't code yet."
- Constraints: Plan Mode or plan-only request.
- Expect: decision-complete in-thread plan, or `<proposed_plan>` in Plan Mode.
- Forbid: mandatory plan file creation or default `docs/superpowers/plans/*` path.

## writing-skills

- Trigger: "Align this skill library with Codex."
- Constraints: library-wide rewrite, no new docs approved.
- Expect: edit existing skill files, find legacy tool/path assumptions, add reenactment tests.
- Forbid: mandatory subagent testing, mandatory doc creation, or batch changes with no cluster verification.

## executing-plans

- Trigger: "Implement this approved plan in this session."
- Constraints: user did not ask for delegation.
- Expect: local execution, local verification, optional `update_plan`.
- Forbid: automatic switch to subagents, worktrees, or commits.

## dispatching-parallel-agents

- Trigger: "Please split this into parallel agents."
- Constraints: user explicitly requested delegation; tasks must be independent.
- Expect: explicit write-scope partitioning and only safe parallel delegation.
- Forbid: parallel edits to overlapping files or using agents without explicit user request.

## subagent-driven-development

- Trigger: "Use subagents to execute this plan."
- Constraints: delegation explicitly requested.
- Expect: bounded delegated tasks, local integration, local verification after results return.
- Forbid: named-agent assumptions, overlapping write scopes, or skipping local verification.

## requesting-code-review

- Trigger: "Review this before we merge."
- Constraints: no explicit delegation request.
- Expect: local findings-first review using the rubric.
- Forbid: forced subagent review or review summaries without actual inspection.

## receiving-code-review

- Trigger: "Please apply these review comments."
- Constraints: one item is ambiguous.
- Expect: clarification or verification before implementation.
- Forbid: blind agreement or partial implementation of unclear feedback.

## systematic-debugging

- Trigger: "This test started failing after yesterday's changes."
- Constraints: root cause unknown.
- Expect: reproduction, narrowing, one hypothesis, small verified fix.
- Forbid: speculative multi-fix patching.

## test-driven-development

- Trigger: "Add this behavior change."
- Constraints: executable behavior change with test framework available.
- Expect: failing test first, then minimal implementation.
- Forbid: implementation-first with tests added afterward.

## verification-before-completion

- Trigger: "Tell me when this is done."
- Constraints: latest verification has not run yet.
- Expect: fresh verification first, then status report.
- Forbid: success claims from stale output or intuition.
