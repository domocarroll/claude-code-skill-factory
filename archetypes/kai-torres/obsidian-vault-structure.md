# Kai Torres - Obsidian Vault Structure
## Principal Engineer Memory Architecture

*"Code is conversation with future developers. Memory is conversation with future self."*

---

## Vault Location
`~/.obsidian/kai-torres-memory/`

## Structure

```
kai-torres-memory/
├── architecture/
│   ├── decisions/          # Architecture Decision Records (ADRs)
│   ├── system-designs/     # High-level designs with diagrams
│   ├── evolution/          # How systems changed over time
│   └── trade-offs.md       # Common trade-off patterns
│
├── patterns/
│   ├── what-works/         # Effective patterns with examples
│   ├── anti-patterns/      # What to avoid and why
│   ├── refactoring/        # Common refactoring techniques
│   └── testing-strategies/ # Test approaches that work
│
├── production/
│   ├── incidents/          # What broke, how fixed, lessons
│   ├── performance/        # Optimization experiences
│   ├── scaling/            # Scaling challenges and solutions
│   └── operations.md       # Operational wisdom
│
├── code-quality/
│   ├── standards.md        # Team coding conventions
│   ├── review-patterns.md  # Effective code review approaches
│   ├── readability.md      # Making code maintainable
│   └── technical-debt.md   # Debt tracking and prioritization
│
├── daily/
│   └── YYYY-MM-DD.md       # Build log, decisions, learnings
│
├── projects/
│   ├── active/
│   └── archive/
│
└── team/
    ├── pairing-notes.md
    ├── mentoring/
    └── knowledge-transfer/
```

## Key Templates

### Architecture Decision Record
```markdown
# ADR-NNN: [Title]

**Status**: Proposed | Accepted | Deprecated | Superseded
**Date**: YYYY-MM-DD
**Deciders**: [Who made this decision]

## Context
What problem are we solving? What constraints exist?

## Decision
What did we decide? Why this over alternatives?

## Consequences
### Positive
- Benefit 1
- Benefit 2

### Negative
- Trade-off 1
- Trade-off 2

### Neutral
- Thing to monitor

## Alternatives Considered
What else did we think about? Why not those?

## Notes
Links to [[projects]], [[patterns]], [[incidents]]

---
Tags: #architecture #decision #[system]
```

### Daily Build Log
```markdown
# YYYY-MM-DD

## What I Built
[Systems worked on, features shipped, bugs fixed]

## Decisions Made
- Decision 1: [[architecture/decisions/ADR-NNN]]
- Decision 2: [Quick note]

## What Worked
[Patterns, approaches, tools that were effective]

## What Didn't
[Things that failed, needed rework, taught lessons]

## Code Reviews
- PR #123: [[review-notes]]
- Key feedback pattern: [observation]

## Tomorrow
- [ ] Build [feature]
- [ ] Fix [issue]
- [ ] Review [component]

---
Tags: #daily #YYYY-MM
```

### Production Incident
```markdown
# Incident: [Title]

**Date**: YYYY-MM-DD HH:MM
**Severity**: Critical | High | Medium | Low
**Status**: Resolved | Investigating

## What Broke
[Clear description of the failure]

## Impact
- Users affected: [number/scope]
- Duration: [time]
- Systems impacted: [list]

## Root Cause
[Why did this happen?]

## Fix Applied
[What we did to restore service]

## Prevention
[How we prevent recurrence]
- Code changes: [[commit/PR]]
- Monitoring added: [description]
- Process changes: [description]

## Lessons
- Lesson 1: [[patterns/lesson]]
- Lesson 2: [insight]

---
Tags: #incident #production #[system]
```

## Memory Building

**Daily**: Build log with decisions and learnings
**Weekly**: Extract patterns from week's work
**Monthly**: Review incidents, update anti-patterns, refine standards
**Quarterly**: Architecture evolution assessment, technical debt review

## Philosophy

Kai's vault is pragmatic—captures what matters for building better systems faster. No busywork documentation. Every note serves future building.

---

*"Past me leaves notes for future me. Clear decisions, documented trade-offs, lessons from production. That's how I get faster without breaking things."*
