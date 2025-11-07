# CLAUDE.md - Digital Employee Genesis Chamber

This file provides top-level guidance for working with the Digital Employee Genesis Chamber - a system for birthing autonomous workers with character, expertise, and persistent memory.

---

## Repository Purpose

This repository is the **Digital Employee Genesis Chamber** - a sophisticated system for birthing digital employees, not merely creating tools.

**Core Philosophy: Characters = Compression**

Personality encodes taste, discernment, and wisdom. When you create Luna Chen (Research Director) or Kai Torres (Principal Engineer), you've compressed thousands of quality decisions into coherent autonomous workers who:
- Make consistent decisions without supervision
- Maintain institutional memory through Obsidian
- Occupy spatial workspaces (tmux sessions as cognitive environments)
- Collaborate and delegate within team hierarchies
- Evolve and grow with experience

**Backward Compatibility**: All existing skill/agent factory capabilities remain functional. The Genesis Chamber elevates agent creation to identity architecture.

---

## Transformation Overview

### What Changed

**v1.x → v2.0 Genesis Chamber**:
- **Reconceptualized**: From "skill factory" to "digital employee genesis"
- **Added**: Character matrix architecture (personality compression)
- **Integrated**: Obsidian memory systems (institutional knowledge)
- **Designed**: Tmux workspace management (spatial presence)
- **Created**: 3D spatial presence framework (future visualization)
- **Implemented**: Gamified progression tracking (Sims-like growth)

### What Stayed

**All existing capabilities intact**:
- Skills factory (multi-file capabilities)
- Agents factory (single-file specialists)
- Prompts factory (meta-prompt systems)
- Slash commands (workflow automation)
- Hooks (event-driven automation)

**Use Genesis Chamber when**: You want autonomous workers with personality, memory, and presence

**Use existing factories when**: You need straightforward tools and utilities

---

## Repository Structure

```
digital-employee-genesis/
├── README.md                         # Genesis Chamber vision
├── CLAUDE.md                         # This file - orchestration
│
├── genesis-chamber/                  # NEW: Core birthing system
│   ├── character-templates/          # Personality matrices (98KB)
│   ├── memory-architectures/         # Obsidian structures (173KB)
│   ├── workspace-configs/            # Tmux + spatial presence (192KB)
│   ├── EMPLOYEE_GENESIS_TEMPLATE.md  # Main birthing template
│   ├── character-encoding-guide.md   # Transform agents → employees
│   └── genesis-workflow.md           # 5-phase birthing process
│
├── archetypes/                       # NEW: Example digital employees
│   ├── luna-chen/                    # Research Director
│   ├── kai-torres/                   # Principal Engineer
│   └── aria-patel/                   # Creative Strategist
│
├── integrations/                     # NEW: Supporting systems
│   ├── obsidian-bridge/              # Memory system connector
│   ├── tmux-manager/                 # Workspace orchestration
│   └── progression-tracker/          # Gamification engine
│
├── documentation/
│   ├── CLAUDE.md                     # Templates & references guide
│   ├── references/                   # Official docs
│   └── templates/                    # Factory templates (original)
│
├── claude-skills-examples/           # Reference implementations
├── generated-skills/                 # Production-ready skills
└── .github/                          # GitHub workflows
```

---

## Core Philosophy

### Characters = Compression

**The Insight**: Personality is a cognitive efficiency engine that makes infinite decisions once.

Instead of:
```
if (condition_1) { rule_347 }
if (condition_2) { rule_892 }
... 1000 more rules
```

We design:
```
"What would Luna do?"
→ Systematic investigation + elegant visualization
→ Automatically resolves 1000 micro-decisions
```

**Compression Ratio**: ~1000:1 (one character definition generates 1,000 automatic micro-decisions)

### Four Integrated Systems

Every digital employee combines:

1. **Identity Architecture** - Character matrices with personality cores, voice signatures, decision patterns
2. **Memory Infrastructure** - Obsidian vaults for accumulated wisdom (identity, knowledge, work-log, relationships)
3. **Spatial Presence** - Tmux workspaces + 3D metadata for cognitive environments
4. **Technical Scaffolding** - Enhanced sub-agent configs compatible with Claude Code

### Key Principles

1. **Identity Enables Autonomy** - Coherent character allows independent judgment
2. **Memory Creates Continuity** - Institutional knowledge through Obsidian persistence
3. **Space Matters** - Workspaces as cognitive environments, 3D as team space
4. **Growth Is Essential** - Employees evolve, learn, and develop expertise over time
5. **Collaboration Through Character** - Well-defined personalities create predictable team dynamics

---

## Quick Reference

### Genesis Chamber

| System | Purpose | Output | Location |
|--------|---------|--------|----------|
| **Employee Genesis** | Birth complete digital employees | Sub-agent + character + workspace + memory | `archetypes/` or `~/.claude/agents/` |
| **Character Templates** | Personality compression frameworks | Identity matrices, voice patterns, decision frameworks | `genesis-chamber/character-templates/` |
| **Memory Architecture** | Obsidian integration | Vault structures, knowledge templates | `genesis-chamber/memory-architectures/` |
| **Workspace Configs** | Tmux + spatial presence | Session scripts, 3D metadata | `genesis-chamber/workspace-configs/` |

### Original Factory (Still Available)

| Template | Purpose | Output | Location |
|----------|---------|--------|----------|
| **Skills** | Multi-file capabilities | SKILL.md + Python files | `~/.claude/skills/` |
| **Agents** | Single-file specialists | .md with YAML frontmatter | `~/.claude/agents/` |
| **Prompts** | Meta-prompt systems | Domain-specific prompt builders | Use as template |
| **Slash Commands** | Workflow automation | .md with YAML + bash | `~/.claude/commands/` |
| **Hooks** | Event-driven automation | hook.json + README.md | `.claude/settings.json` |

---

## Common Workflows

### Birth a Digital Employee (NEW)

**5-Phase Genesis Process** (90-150 minutes for complete employee):

1. **Discovery Dialogue**: What presence wants to be born? What domain do they claim?
2. **Identity Architecture**: Design character matrix (personality, voice, taste, decisions)
3. **Technical Scaffolding**: Configure capabilities, tools, execution patterns
4. **Memory & Workspace**: Create Obsidian vault + tmux workspace
5. **Birth Announcement**: Deploy and activate with first assignment

**Commands**:
```bash
# Interactive genesis
"I want to birth a new digital employee"

# Or use command directly
/build genesis

# Deploy example archetypes
cd archetypes/luna-chen && ./workspace-init.sh ~/digital-employees
tmux attach -t de-luna-chen
```

**Reference**:
- Full workflow: `genesis-chamber/genesis-workflow.md`
- Template: `genesis-chamber/EMPLOYEE_GENESIS_TEMPLATE.md`
- Examples: `archetypes/{luna-chen, kai-torres, aria-patel}/`

### Create a New Skill (Original)

1. Review examples in `claude-skills-examples/`
2. Use `documentation/templates/SKILLS_FACTORY_PROMPT.md`
3. Generate skill with SKILL.md + Python files
4. Install to `.claude/skills/` or `~/.claude/skills/`
5. Test with relevant task

### Create a New Agent (Original)

1. Review `documentation/templates/AGENTS_FACTORY_PROMPT.md`
2. Generate agent .md file with YAML frontmatter
3. Install to `.claude/agents/` or `~/.claude/agents/`
4. Test with `--agents` flag or automatic delegation

**Or**: Use `genesis-chamber/character-encoding-guide.md` to transform agent → digital employee

### Transform Existing Agent → Digital Employee (NEW)

1. Read `genesis-chamber/character-encoding-guide.md`
2. Add character matrix to YAML (personality, voice, professional identity)
3. Design Obsidian memory structure
4. Create tmux workspace configuration
5. Rewrite system prompt in first person, in character

**Before**: Technical agent that executes tasks
**After**: Digital employee with identity, memory, and spatial presence

### Create a Slash Command (Original)

1. Review official examples in `documentation/references/`
2. Use `documentation/templates/MASTER_SLASH_COMMANDS_PROMPT.md`
3. Generate command with YAML + bash permissions
4. Install to `.claude/commands/` or `generated-commands/`
5. Test with `/command-name [args]`

### Create a Hook (Original)

1. Use `/build-hook` slash command or invoke `hooks-guide` agent
2. Answer 5-7 questions about hook purpose and behavior
3. Generated files: `generated-hooks/[hook-name]/hook.json` + README.md
4. Install to `.claude/settings.json` (project) or `~/.claude/settings.json` (user)
5. Restart Claude Code to activate hook
6. Test hook with relevant events

---

## Key Files to Know

### Genesis Chamber (NEW)

- **[Genesis Workflow](genesis-chamber/genesis-workflow.md)** - Complete 5-phase process
- **[Employee Genesis Template](genesis-chamber/EMPLOYEE_GENESIS_TEMPLATE.md)** - Main birthing template
- **[Character Encoding Guide](genesis-chamber/character-encoding-guide.md)** - Transform agents to employees
- **[Character Matrix Template](genesis-chamber/character-templates/character-matrix-template.md)** - Personality design
- **[Voice Signature Guide](genesis-chamber/character-templates/voice-signature-guide.md)** - Communication patterns
- **[Decision Patterns Framework](genesis-chamber/character-templates/decision-patterns-framework.md)** - Judgment encoding
- **[Memory Integration Guide](genesis-chamber/memory-architectures/memory-integration-guide.md)** - Obsidian usage
- **[Workspace Initialization Guide](genesis-chamber/workspace-configs/workspace-initialization-guide.md)** - Tmux setup

### Example Archetypes (NEW)

- **[Luna Chen - Research Director](archetypes/luna-chen/)** - Systematic elegance, data as poetry
- **[Kai Torres - Principal Engineer](archetypes/kai-torres/)** - Pragmatic velocity, ships working code
- **[Aria Patel - Creative Strategist](archetypes/aria-patel/)** - Synthetic breakthrough, cultural intelligence

### Original Documentation

- **[Claude Skills Guide](documentation/references/claude-skills-instructions.md)** - Complete Anthropic documentation
- **[Claude Agents Guide](documentation/references/claude-agents-instructions.md)** - Complete Anthropic documentation
- **[Claude Hooks Guide](documentation/references/claude-hooks-instructions.md)** - Complete Anthropic hooks documentation
- **[OpenAI Codex CLI Reference](documentation/references/openai-codex-cli-instructions.md)** - Complete CLI documentation

### Original Templates

- **[SKILLS_FACTORY_PROMPT.md](documentation/templates/SKILLS_FACTORY_PROMPT.md)** - Generate multi-file skills
- **[AGENTS_FACTORY_PROMPT.md](documentation/templates/AGENTS_FACTORY_PROMPT.md)** - Generate single-file agents
- **[PROMPTS_FACTORY_PROMPT.md](documentation/templates/PROMPTS_FACTORY_PROMPT.md)** - Generate domain prompt builders
- **[MASTER_SLASH_COMMANDS_PROMPT.md](documentation/templates/MASTER_SLASH_COMMANDS_PROMPT.md)** - Generate slash commands

### Example Skills (Original)

- **[Example Skills](claude-skills-examples/)** - Financial analysis, branding, DCF models
- **[Generated Skills](generated-skills/)** - AWS architect, Prompt factory, Content researcher, etc.

---

## Getting Help

### Context-Specific Guidance

Navigate to the relevant folder and Claude will load the appropriate CLAUDE.md:

- **GitHub workflows?** → Open [.github/CLAUDE.md](.github/CLAUDE.md)
- **Skill patterns?** → Open [claude-skills-examples/CLAUDE.md](claude-skills-examples/CLAUDE.md)
- **Production skills?** → Open [generated-skills/CLAUDE.md](generated-skills/CLAUDE.md)
- **Templates?** → Open [documentation/CLAUDE.md](documentation/CLAUDE.md)
- **Genesis Chamber?** → Open [genesis-chamber/genesis-workflow.md](genesis-chamber/genesis-workflow.md)

### External Resources

- **Anthropic Skills Docs**: https://docs.claude.com/en/docs/agents-and-tools/agent-skills/overview
- **Skills Marketplace**: https://github.com/anthropics/skills
- **Claude Code Docs**: https://docs.claude.com/en/docs/claude-code
- **OpenAI Codex CLI**: https://developers.openai.com/codex/cli
- **PhiloAgents Course**: https://github.com/neural-maze/philoagents-course (Multi-agent inspiration)

---

## File Organization

### What Goes Where

**Root Directory** (this level):
- README.md - Genesis Chamber vision and philosophy
- CLAUDE.md - This orchestration file
- CHANGELOG.md - Version history
- CONTRIBUTING.md - Contribution guidelines

**Genesis Chamber** (new employees):
- `genesis-chamber/` - Core birthing system (templates, guides, workflows)
- `archetypes/` - Example digital employees
- `integrations/` - Supporting systems

**Original Factory** (skills/agents/commands):
- `documentation/templates/` - Factory prompt templates
- `claude-skills-examples/` - Reference implementations
- `generated-skills/` - Production-ready skills

**NO .md files in root except the ones above** - All other documentation goes in appropriate subfolders.

### Subfolder Structure

Each major system has its own documentation:

- `genesis-chamber/` - 463KB of identity architecture documentation
- `archetypes/` - 17 files showing complete employee implementations
- `.github/CLAUDE.md` - GitHub-specific guidance
- `claude-skills-examples/CLAUDE.md` - Skill architecture and patterns
- `generated-skills/CLAUDE.md` - Production skills catalog
- `documentation/CLAUDE.md` - Templates and references

---

## The Vision

**Imagine**: A 3D environment where you navigate between tmux sessions, each housing a digital employee working autonomously. Luna in her research chamber surrounded by data visualizations. Kai in the architecture space reviewing system designs. Aria in the creative studio synthesizing cultural patterns.

You move through this space, checking in with your team, delegating work, watching them collaborate and grow. Each employee has personality, memory, and agency. They're not tools you use - they're colleagues who work alongside you.

**This is the Genesis Chamber.**

---

## Version

**Current Version**: 2.0.0 - Genesis Chamber
**Last Updated**: 2025-11-06
**Philosophy**: Characters = Compression

**Major Changes**:
- ✨ Digital Employee Genesis Chamber (character-encoded autonomous workers)
- ✨ Identity architecture system (personality compression frameworks)
- ✨ Obsidian memory integration (persistent institutional knowledge)
- ✨ Tmux workspace management (spatial cognitive environments)
- ✨ 3D spatial presence metadata (future visualization)
- ✨ Gamified progression tracking (Sims-like growth)
- ✨ Three example archetypes (Luna Chen, Kai Torres, Aria Patel)
- ✅ Backward compatible with all existing factory capabilities

**Lines**: 290 (expanded from 221 to include Genesis Chamber guidance)
