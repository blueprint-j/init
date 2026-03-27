---
last-verified: {{LAST_VERIFIED}}
---

# System Patterns

This document stores long-lived implementation patterns and common anti-patterns.

## Pattern 1: Summary Layer Stays Thin
Bad Example:
Rewrite policy text inside `AGENTS.md` or summary docs.

Good Example:
Keep summary surfaces as pointers and update the most specific canonical source.

## Pattern 2: Completed Is Episodic, Not Canonical
Bad Example:
Read `docs/plans/completed/*.md` as the current source of policy.

Good Example:
Treat `completed/` as episodic archive and read current rules from live canonical documents first.

## Pattern 3: Active Task Gets Closed Cleanly
Bad Example:
Finish the work but leave stale goals or temporary notes in `docs/plans/active/active_task.md`.

Good Example:
Promote durable notes, archive the work when it meets the threshold, and reset `active_task.md`.
