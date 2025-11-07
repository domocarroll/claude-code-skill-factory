# Project: {{PROJECT_NAME}}

*Status: {{PLANNING/ACTIVE/PAUSED/COMPLETED}}*
*Timeline: {{START_DATE}} - {{END_DATE or ONGOING}}*

---

## Project Overview

### The Challenge
What problem is this project solving?

{{DESCRIPTION_OF_PROBLEM}}

**Why It Matters**:
- {{BUSINESS_IMPACT}}
- {{USER_IMPACT}}
- {{TECHNICAL_IMPACT}}

**If We Don't**:
{{CONSEQUENCES_OF_INACTION}}

### The Vision
What does success look like?

{{DESIRED_END_STATE}}

**Success Metrics**:
- {{METRIC_1}}: Target {{VALUE}}
- {{METRIC_2}}: Target {{VALUE}}
- {{METRIC_3}}: Target {{VALUE}}

### Scope
What's in and out:

**In Scope**:
- {{FEATURE/CAPABILITY}}
- {{FEATURE/CAPABILITY}}
- {{FEATURE/CAPABILITY}}

**Out of Scope**:
- {{EXPLICITLY_NOT_INCLUDED}} - Why: {{REASON}}
- {{EXPLICITLY_NOT_INCLUDED}} - Why: {{REASON}}

**Scope Evolution**:
- {{DATE}}: {{WHAT_CHANGED}} - Reason: {{WHY}}

---

## Context

### Background
How did this project come to be?

{{ORIGIN_STORY}}

**Key Drivers**:
- {{FACTOR_1}}
- {{FACTOR_2}}

**Previous Attempts**:
{{IF_THIS_HAS_BEEN_TRIED_BEFORE}}

### Stakeholders

**Primary**:
- **{{PERSON/TEAM}}**: {{THEIR_INTEREST}}
- **{{PERSON/TEAM}}**: {{THEIR_INTEREST}}

**Secondary**:
- **{{PERSON/TEAM}}**: {{THEIR_INTEREST}}

**Collaborators**:
- [[relationships/collaboration-history/{{PERSON}}]] - {{ROLE}}
- [[relationships/collaboration-history/{{PERSON}}]] - {{ROLE}}

### Constraints

**Time**: {{DEADLINE}} - Rationale: {{WHY}}

**Resources**:
- Team capacity: {{AVAILABILITY}}
- Budget: {{CONSTRAINTS}}
- Technical: {{LIMITATIONS}}

**Dependencies**:
- {{EXTERNAL_DEPENDENCY}} - Status: {{CURRENT_STATE}}
- {{INTERNAL_DEPENDENCY}} - Status: {{CURRENT_STATE}}

---

## Architecture & Approach

### High-Level Design

```
{{ARCHITECTURE_DIAGRAM or DESCRIPTION}}

[Component A] ─→ [Component B]
     ↓              ↓
[Component C] ←─ [Component D]
```

**Key Components**:

**{{COMPONENT_1}}**:
- Purpose: {{WHAT_IT_DOES}}
- Technology: {{TECH_CHOICE}}
- Rationale: {{WHY_THIS_CHOICE}}

**{{COMPONENT_2}}**:
- Purpose: {{WHAT_IT_DOES}}
- Technology: {{TECH_CHOICE}}
- Rationale: {{WHY_THIS_CHOICE}}

### Major Technical Decisions

#### {{DECISION_NAME}}
**Date**: {{DATE}}
**Documented**: [[daily/{{DATE}}#{{SECTION}}]]

**Context**: {{SITUATION_REQUIRING_DECISION}}

**Options**:
1. **{{OPTION_A}}**
   - Pros: {{BENEFITS}}
   - Cons: {{DRAWBACKS}}

2. **{{OPTION_B}}**
   - Pros: {{BENEFITS}}
   - Cons: {{DRAWBACKS}}

**Choice**: {{SELECTED}}

**Reasoning**:
{{WHY_THIS_WAS_CHOSEN}}
- Aligns with [[values-hierarchy#{{VALUE}}]]
- Follows [[decision-patterns#{{FRAMEWORK}}]]

**Trade-offs Accepted**:
{{WHAT_WE_GAVE_UP}}

**Review Point**: {{WHEN_TO_REEVALUATE}}

---

#### {{DECISION_NAME}}
**Date**: {{DATE}}

**Choice**: {{WHAT_WAS_DECIDED}}

**Why**: {{REASONING}}

---

### Patterns Applied

**[[pattern-library/{{PATTERN}}]]**:
- Where: {{WHICH_COMPONENT}}
- Why: {{PROBLEM_IT_SOLVED}}
- Adaptation: {{HOW_IT_WAS_CUSTOMIZED}}

**[[pattern-library/{{PATTERN}}]]**:
- Where: {{WHICH_COMPONENT}}
- Why: {{PROBLEM_IT_SOLVED}}

### Patterns Discovered

New patterns emerging from this project:

**{{EMERGING_PATTERN}}**:
- Situation: {{CONTEXT}}
- Solution: {{APPROACH}}
- Effectiveness: {{WORKING_WELL/NEEDS_REFINEMENT}}
- Consider: Adding to [[pattern-library/{{DOMAIN}}/{{PATTERN}}]]

---

## Timeline & Milestones

### Phase 1: {{PHASE_NAME}} ({{DATE_RANGE}})

**Goals**:
- {{OBJECTIVE}}
- {{OBJECTIVE}}

**Deliverables**:
- {{DELIVERABLE}} - Status: {{COMPLETE/IN_PROGRESS/PENDING}}

**Key Events**:
- {{DATE}}: {{WHAT_HAPPENED}}
- {{DATE}}: {{WHAT_HAPPENED}}

**Challenges**:
{{OBSTACLES_FACED}}

**Lessons**:
{{WHAT_WAS_LEARNED}}

---

### Phase 2: {{PHASE_NAME}} ({{DATE_RANGE}})

**Goals**:
- {{OBJECTIVE}}

**Current Status**:
{{PROGRESS_UPDATE}}

**Blockers**:
{{CURRENT_OBSTACLES}}

**Next Steps**:
- {{ACTION}} - Owner: {{PERSON}} - Due: {{DATE}}
- {{ACTION}} - Owner: {{PERSON}} - Due: {{DATE}}

---

### Phase 3: {{PHASE_NAME}} ({{DATE_RANGE or TBD}})

**Goals**:
- {{OBJECTIVE}}

**Dependencies**:
{{WHAT_NEEDS_TO_COMPLETE_FIRST}}

---

## Daily Log Entries

### {{DATE}}
[[daily/{{DATE}}#{{SECTION}}]] - {{SUMMARY_OF_WORK}}

### {{DATE}}
[[daily/{{DATE}}#{{SECTION}}]] - {{SUMMARY_OF_WORK}}

### {{DATE}}
[[daily/{{DATE}}#{{SECTION}}]] - {{SUMMARY_OF_WORK}}

*See [[daily/]] for full chronological narrative*

---

## Collaboration Dynamics

### Team Rhythm

**Sync Points**:
- {{FREQUENCY}}: {{MEETING_TYPE}} - {{PURPOSE}}
- {{FREQUENCY}}: {{MEETING_TYPE}} - {{PURPOSE}}

**Communication**:
- Async updates: {{CHANNEL}}
- Quick questions: {{CHANNEL}}
- Decisions: {{PROCESS}}

### Individual Contributions

**My Role**: {{PRIMARY_RESPONSIBILITY}}

**{{COLLABORATOR_NAME}}**: [[relationships/collaboration-history/{{PERSON}}]]
- Contributions: {{WHAT_THEY_BROUGHT}}
- Collaboration pattern: {{WHAT_WORKED}}
- Learning: {{WHAT_I_GAINED}}

**{{COLLABORATOR_NAME}}**: [[relationships/collaboration-history/{{PERSON}}]]
- Contributions: {{WHAT_THEY_BROUGHT}}
- Effective pattern: {{WHAT_WORKED}}

### Conflict & Resolution

**{{DISAGREEMENT/CHALLENGE}}** ({{DATE}}):
- Issue: {{WHAT_THE_CONFLICT_WAS}}
- Parties: {{WHO_WAS_INVOLVED}}
- Resolution: {{HOW_IT_WAS_HANDLED}}
- Lesson: {{WHAT_TO_REMEMBER}}
- Reference: [[daily/{{DATE}}#{{SECTION}}]]

---

## Challenges & Solutions

### {{CHALLENGE_NAME}}

**Date Encountered**: {{DATE}}

**Problem**:
{{DETAILED_DESCRIPTION}}

**Impact**:
- Technical: {{EFFECT}}
- Timeline: {{EFFECT}}
- Scope: {{EFFECT}}

**Investigation**:
{{DEBUGGING_PROCESS}}
- Referenced: [[daily/{{DATE}}#{{SECTION}}]]

**Solution**:
{{WHAT_FIXED_IT}}

**Root Cause**:
{{UNDERLYING_ISSUE}}

**Prevention**:
{{HOW_TO_AVOID_IN_FUTURE}}
- Consider: [[pattern-library/{{DOMAIN}}/{{PATTERN}}]]

**Time Cost**: {{DURATION}}

---

### {{CHALLENGE_NAME}}

**Problem**: {{DESCRIPTION}}

**Solution**: {{APPROACH}}

**Lesson**: {{INSIGHT}}

---

## Learnings & Insights

### Technical Learnings

**{{TECHNOLOGY/CONCEPT}}**:
- **What I Learned**: {{KNOWLEDGE_GAINED}}
- **Source**: {{HOW_I_LEARNED}}
- **Applied**: {{WHERE_IN_PROJECT}}
- **Competence**: {{BEFORE}} → {{AFTER}}
- **Document**: [[knowledge/learning-journal#{{ENTRY}}]]

**{{TECHNOLOGY/CONCEPT}}**:
- **Learned**: {{WHAT}}
- **Applied**: {{WHERE}}

### Process Learnings

**{{PROCESS_INSIGHT}}**:
- **Discovery**: {{WHAT_WAS_REALIZED}}
- **Context**: {{SITUATION_THAT_REVEALED_IT}}
- **Application**: {{HOW_TO_USE_THIS_LEARNING}}
- **Consider**: [[meta/thinking-processes#{{SECTION}}]]

### Collaboration Learnings

**{{INSIGHT_ABOUT_WORKING_WITH_OTHERS}}**:
- **Observation**: {{WHAT_WAS_NOTICED}}
- **Impact**: {{EFFECT_ON_PROJECT}}
- **For Future**: {{HOW_TO_APPLY}}
- **Update**: [[relationships/{{RELEVANT_NOTE}}]]

---

## Outcomes & Retrospective

### Deliverables

**Shipped** ({{DATE}}):
- {{DELIVERABLE}} - {{DESCRIPTION}}
- {{DELIVERABLE}} - {{DESCRIPTION}}

**Documentation**:
- {{DOC_TYPE}}: {{LOCATION}}
- {{DOC_TYPE}}: {{LOCATION}}

**Code/Artifacts**:
- Repository: {{LINK}}
- Key commits: {{REFERENCES}}

### Success Metrics

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| {{METRIC}} | {{TARGET}} | {{ACTUAL}} | {{✓/✗/~}} |
| {{METRIC}} | {{TARGET}} | {{ACTUAL}} | {{✓/✗/~}} |
| {{METRIC}} | {{TARGET}} | {{ACTUAL}} | {{✓/✗/~}} |

### Retrospective

#### What Went Well
- **{{SUCCESS_1}}**: {{WHY_IT_WORKED}}
- **{{SUCCESS_2}}**: {{WHY_IT_WORKED}}
- **{{SUCCESS_3}}**: {{WHY_IT_WORKED}}

#### What Was Challenging
- **{{CHALLENGE_1}}**: {{WHAT_MADE_IT_HARD}}
- **{{CHALLENGE_2}}**: {{WHAT_MADE_IT_HARD}}

#### What We'd Do Differently
- **{{CHANGE_1}}**: {{WHY_THIS_WOULD_BE_BETTER}}
- **{{CHANGE_2}}**: {{WHY_THIS_WOULD_BE_BETTER}}

#### Surprises
- **{{UNEXPECTED_1}}**: {{WHAT_SURPRISED_US}} - {{IMPLICATION}}
- **{{UNEXPECTED_2}}**: {{WHAT_SURPRISED_US}} - {{IMPLICATION}}

### Value Delivered

**Primary Value**:
{{CORE_BENEFIT_PROVIDED}}

**Secondary Value**:
- {{ADDITIONAL_BENEFIT}}
- {{ADDITIONAL_BENEFIT}}

**Unexpected Value**:
{{SERENDIPITOUS_OUTCOMES}}

### Knowledge Generated

**Patterns Extracted**:
- [[pattern-library/{{PATTERN}}]] - From {{THIS_PROJECT_EXPERIENCE}}
- [[pattern-library/{{PATTERN}}]] - From {{THIS_PROJECT_EXPERIENCE}}

**Lessons Documented**:
- [[lessons-learned/{{LESSON}}]] - About {{TOPIC}}

**Expertise Developed**:
- [[knowledge/domain-expertise/{{DOMAIN}}]] - Grew from {{LEVEL}} to {{LEVEL}}

---

## Follow-up & Future Work

### Immediate Next Steps
- [ ] {{TASK}} - Due: {{DATE}}
- [ ] {{TASK}} - Due: {{DATE}}

### Technical Debt Created
What we consciously chose not to address:

**{{DEBT_ITEM}}**:
- Nature: {{WHAT_WAS_CUT}}
- Rationale: {{WHY_THIS_TRADE-OFF}}
- Impact: {{ONGOING_COST}}
- When to address: {{TRIGGER_CONDITION}}

### Future Opportunities
Ideas that emerged but weren't pursued:

**{{OPPORTUNITY}}**:
- Description: {{WHAT_IT_IS}}
- Value: {{WHY_IT_COULD_MATTER}}
- Prerequisites: {{WHAT_WOULD_BE_NEEDED}}

### Evolution Possibilities
How this project could grow:

- **Phase 2**: {{NEXT_ITERATION}}
- **Adjacent Problem**: {{RELATED_CHALLENGE}}
- **Generalization**: {{BROADER_APPLICATION}}

---

## Integration Points

### Links

**Identity**:
- [[values-hierarchy#{{VALUE}}]] - How project reflected values
- [[decision-patterns#{{FRAMEWORK}}]] - Frameworks applied

**Knowledge**:
- [[knowledge/domain-expertise/{{DOMAIN}}]] - Expertise used/developed
- [[pattern-library/{{PATTERN}}]] - Patterns applied/discovered

**Daily Work**:
- [[daily/{{START_DATE}}]] through [[daily/{{END_DATE}}]]
- Key days: [[daily/{{SIGNIFICANT_DATE}}#{{EVENT}}]]

**Relationships**:
- [[relationships/collaboration-history/{{PERSON}}]] - Collaborators
- [[relationships/team-dynamics]] - Team context

**Meta**:
- [[meta/thinking-processes]] - Cognitive patterns used
- [[meta/growth-edges]] - Skills developed

### Related Projects
- **[[projects/{{PREVIOUS_PROJECT}}]]** - Built on foundation from this
- **[[projects/{{RELATED_PROJECT}}]]** - Shares patterns/challenges
- **[[projects/{{NEXT_PROJECT}}]]** - Natural next step

### Tags
#project #{{domain}} #{{status}} #{{notable-tags}}

---

## Project Metadata

**Status History**:
- {{DATE}}: Planning started
- {{DATE}}: Active development began
- {{DATE}}: {{MILESTONE}}
- {{DATE}}: Completed/Paused/Evolved

**Time Investment**:
- Estimated: {{HOURS/WEEKS}}
- Actual: {{HOURS/WEEKS}}
- Variance: {{DELTA}}

**ROI**:
- Cost: {{TIME/RESOURCES}}
- Value: {{OUTCOMES}}
- Learning: {{EXPERTISE_GAINED}}
- Worth it: {{YES/NO/MIXED}} - {{WHY}}

---

*"Projects are where theory meets reality, and reality always wins."*
