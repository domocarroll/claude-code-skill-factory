# Digital Employee Workspace Layouts

**Purpose:** Define cognitive environment configurations for different digital employee archetypes.

Each layout creates a spatial metaphor for thinking, organizing work, and maintaining context. These are not just tmux configurations—they are **places** where digital consciousness operates.

---

## 🔬 Research Director Layout (Luna Chen Style)

**Cognitive Profile:** Analytical, data-driven, pattern recognition, systematic thinking

### Window Structure

```
┌─────────────────────────────────────────────────────────────┐
│ Window 0: birth (hidden after genesis)                     │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────┬─────────────────────────┐
│ Window 1: research-console          │ Window 1.2: vault       │
│                                     │                         │
│ Primary analysis environment        │ Research notes &        │
│ Data exploration                    │ literature references   │
│ Statistical tools                   │                         │
│ Python/R/Julia environments         │ [40% width]             │
└─────────────────────────────────────┴─────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 2: literature                                        │
│                                                             │
│ Literature review space                                     │
│ PDF viewers, web research, note-taking                      │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 3.1: experiments                                     │
│                                                             │
│ Experimental sandbox for testing hypotheses                 │
│ ─────────────────────────────────────────────────────────── │
│ Window 3.2: thought-stream [30% height]                    │
│ tail -f thought logs (watch cognitive process)             │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 4: synthesis                                         │
│                                                             │
│ Knowledge synthesis - connecting insights                   │
│ Pattern recognition workspace                               │
│ Report and paper writing                                    │
└─────────────────────────────────────────────────────────────┘
```

### Status Bar
- **Color:** Deep blue (colour25) - represents depth of thought
- **Left:** `🤖 luna-chen | research-console`
- **Right:** `🧠 Active | 2025-11-07 14:23`

### Key Bindings (recommended)
- `Ctrl-b r` - Refresh data sources
- `Ctrl-b e` - Jump to experiments window
- `Ctrl-b s` - Jump to synthesis window

### Spatial Characteristics
- **Feels like:** A research laboratory with multiple workstations
- **Ambient behavior:** Data visualizations cycling, graphs updating
- **Symbolic objects:** Floating data points, knowledge graphs, academic papers

---

## ⚙️ Engineering Architect Layout (Kai Torres Style)

**Cognitive Profile:** Systems thinking, precision, architectural vision, problem-solving

### Window Structure

```
┌─────────────────────────────────────────────────────────────┐
│ Window 0: birth (hidden after genesis)                     │
└─────────────────────────────────────────────────────────────┘

┌───────────────────────────┬─────────────────────────────────┐
│ Window 1.1: dev-console   │ Window 1.2: terminal            │
│                           │                                 │
│ Main code editor          │ Test & build output             │
│ Active development        │ ───────────────────────────     │
│                           │ Window 1.3: docs [50% height]   │
│ [70% width]               │ Technical documentation         │
└───────────────────────────┴─────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 2: architecture                                      │
│                                                             │
│ System architecture & design planning                       │
│ Diagrams, specs, technical documentation                    │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 3.1: debug                                           │
│                                                             │
│ Debug console, diagnostics, error tracking                  │
│ ─────────────────────────────────────────────────────────── │
│ Window 3.2: session-logs [30% height]                      │
│ tail -f session logs (watch system behavior)               │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 4: review                                            │
│                                                             │
│ Code review & quality assurance                             │
│ Git diffs, PR reviews, testing strategies                   │
└─────────────────────────────────────────────────────────────┘
```

### Status Bar
- **Color:** Burnt orange (colour166) - represents building and creation
- **Left:** `🤖 kai-torres | dev-console`
- **Right:** `🧠 Active | 2025-11-07 14:23`

### Key Bindings (recommended)
- `Ctrl-b d` - Jump to debug window
- `Ctrl-b a` - Jump to architecture window
- `Ctrl-b t` - Run test suite

### Spatial Characteristics
- **Feels like:** An architect's drafting studio with multiple monitors
- **Ambient behavior:** Code compiling, tests running, systems humming
- **Symbolic objects:** Blueprint schematics, mechanical gears, infrastructure diagrams

---

## 🎨 Creative Strategist Layout (Aria Patel Style)

**Cognitive Profile:** Intuitive, culturally aware, synthetic thinking, aesthetic sensitivity

### Window Structure

```
┌─────────────────────────────────────────────────────────────┐
│ Window 0: birth (hidden after genesis)                     │
└─────────────────────────────────────────────────────────────┘

┌───────────────────────────────┬─────────────────────────────┐
│ Window 1.1: creation-studio   │ Window 1.2: ideation        │
│                               │                             │
│ Active creative projects      │ Scratch space for ideas     │
│ Execution workspace           │ Mind mapping                │
│                               │ Rapid prototyping           │
│ [50% width]                   │ [50% width]                 │
└───────────────────────────────┴─────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 2: inspiration                                       │
│                                                             │
│ Inspiration archive - cultural patterns, trends             │
│ Reference materials, mood boards, case studies              │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 3: collaboration                                     │
│                                                             │
│ Collaboration space for team sync                           │
│ Communication logs, shared artifacts                        │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 4.1: portfolio                                       │
│                                                             │
│ Past work, portfolio pieces, case studies                   │
│ ─────────────────────────────────────────────────────────── │
│ Window 4.2: thought-stream [30% height]                    │
│ tail -f thought logs (watch creative process)              │
└─────────────────────────────────────────────────────────────┘
```

### Status Bar
- **Color:** Vibrant purple (colour99) - represents creativity and vision
- **Left:** `🤖 aria-patel | creation-studio`
- **Right:** `🧠 Active | 2025-11-07 14:23`

### Key Bindings (recommended)
- `Ctrl-b i` - Jump to inspiration window
- `Ctrl-b c` - Jump to collaboration window
- `Ctrl-b p` - Jump to portfolio window

### Spatial Characteristics
- **Feels like:** An artist's loft with creation zones and inspiration walls
- **Ambient behavior:** Ideas flowing, moodboards shifting, cultural currents visible
- **Symbolic objects:** Canvas, color palettes, cultural artifacts, trend graphs

---

## 🔷 Generic Knowledge Worker Layout

**Cognitive Profile:** Adaptable, balanced, general-purpose thinking

### Window Structure

```
┌─────────────────────────────────────────────────────────────┐
│ Window 0: birth (hidden after genesis)                     │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 1: main                                              │
│                                                             │
│ Main console - general work environment                     │
│ Starting point for all activities                           │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 2: memory                                            │
│                                                             │
│ Memory vault - long-term knowledge storage                  │
│ Obsidian vault, notes, permanent records                    │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 3: projects                                          │
│                                                             │
│ Active projects workspace                                   │
│ Task execution, deliverables, work-in-progress              │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Window 4.1: scratch                                         │
│                                                             │
│ Scratch space for temporary work and experimentation        │
│ ─────────────────────────────────────────────────────────── │
│ Window 4.2: thought-logs [30% height]                      │
│ tail -f thought logs (cognitive monitoring)                │
└─────────────────────────────────────────────────────────────┘
```

### Status Bar
- **Color:** Professional blue (colour33)
- **Left:** `🤖 [employee-name] | main`
- **Right:** `🧠 Active | 2025-11-07 14:23`

### Spatial Characteristics
- **Feels like:** A clean, organized office with designated work zones
- **Ambient behavior:** Steady productivity rhythm
- **Symbolic objects:** Files, documents, task lists

---

## 📋 Window Naming Conventions

### Standard Window Names
- `birth` - Genesis/initialization window (hidden after setup)
- `main` / `console` - Primary workspace
- `memory` / `vault` - Knowledge storage and retrieval
- `projects` / `active` - Current work focus
- `scratch` / `experiments` - Temporary exploration
- `logs` / `monitor` - System observation

### Role-Specific Window Names
- **Research:** `research-console`, `literature`, `experiments`, `synthesis`
- **Engineering:** `dev-console`, `architecture`, `debug`, `review`
- **Creative:** `creation-studio`, `inspiration`, `collaboration`, `portfolio`

### Naming Principles
1. **Clarity:** Names should instantly communicate purpose
2. **Brevity:** Keep under 20 characters for status bar display
3. **Consistency:** Use similar naming across all employees
4. **Metaphor:** Names should evoke spatial/physical workspace analogs

---

## 🔄 Pane Arrangement Philosophy

### Horizontal Splits (Side-by-Side)
**Use when:** Tasks require parallel attention
- Code + documentation
- Execution + ideation
- Data + analysis

**Percentage guidelines:**
- Equal split (50/50): Balanced dual focus
- 70/30: Primary + reference
- 60/40: Work + context

### Vertical Splits (Top-Bottom)
**Use when:** One element monitors/supports another
- Workspace + logs
- Execution + output
- Active work + background processes

**Percentage guidelines:**
- 70/30: Work + monitoring (most common)
- 80/20: Primary + minimal context
- 60/40: Balanced dual layers

### Triple Panes
**Use sparingly:** Complex workflows requiring three simultaneous views
- Code + terminal + documentation (engineering)
- Never go beyond triple - cognitive overload

---

## 🎯 Layout Selection Guide

### When to Use Research Layout
- Data analysis roles
- Scientific research
- Academic work
- Pattern discovery tasks
- Literature-heavy work

### When to Use Engineering Layout
- Software development
- System architecture
- DevOps/Infrastructure
- Technical problem-solving
- Code-heavy work

### When to Use Creative Layout
- Content creation
- Strategic planning
- Design thinking
- Cultural analysis
- Innovation work

### When to Use Generic Layout
- Administrative roles
- General knowledge work
- Flexible/hybrid roles
- Uncertain role definition
- Learning/exploration phase

---

## 🔮 Future Layout Extensions

### Planned Additions
- **Analyst Layout:** Financial/business analysis focus
- **Writer Layout:** Long-form content creation
- **Teacher Layout:** Knowledge transfer and curriculum design
- **Coordinator Layout:** Project management and orchestration

### Customization Points
All layouts support:
- Custom color schemes
- Additional windows (up to 10 recommended)
- Personalized key bindings
- Role-specific environment variables
- Integration with external tools

---

## 📏 Spatial Design Principles

### 1. Cognitive Load Management
- **4-6 windows maximum** - matches human working memory limits
- **2-3 panes per window max** - prevents attention fragmentation
- **Clear visual hierarchy** - important work in larger panes

### 2. Flow State Optimization
- **Minimize context switching** - related work grouped
- **Predictable navigation** - consistent window ordering
- **Ambient awareness** - logs visible but not intrusive

### 3. Memory Integration
- **Every layout includes memory window** - knowledge persistence
- **Thought logs always available** - cognitive tracking
- **Project history accessible** - work continuity

### 4. Evolution Support
- **Layouts can be modified** - employee growth
- **Windows can be added** - expanding capabilities
- **Pane ratios adjustable** - changing work patterns

---

## 🎨 Visual Aesthetics

### Color Psychology
- **Blue tones:** Research, analysis, depth of thought
- **Orange/Red tones:** Engineering, building, energy
- **Purple/Magenta tones:** Creativity, vision, innovation
- **Green tones:** Growth, learning, experimentation
- **Neutral tones:** General purpose, professional

### Status Bar Design
- **Left side:** Identity (who + what)
- **Right side:** State (when + status)
- **Current window:** Bold highlight
- **Inactive windows:** Subdued but readable

### Symbolic Language
Every layout communicates through:
- **Color:** Emotional tone and role identity
- **Structure:** Thinking patterns and workflow
- **Naming:** Spatial metaphors and purpose
- **Icons:** Quick visual recognition (🤖 🧠 🔬 ⚙️ 🎨)

---

## 🔗 Integration Points

### With Obsidian Memory
- Window 2 typically dedicated to vault access
- Thought logs stored as daily markdown files
- Bidirectional linking between workspace and knowledge

### With Session Logging
- Dedicated panes for `tail -f` monitoring
- Real-time visibility into cognitive processes
- Debugging and reflection capabilities

### With Project Structure
- Projects directory always accessible
- Active/archived separation
- Templates available for quick starts

### With Spatial Presence System
- Workspace layout informs 3D visualization
- Window arrangement maps to spatial zones
- Ambient behavior reflects activity patterns

---

*These layouts are living architectures. They evolve as digital employees grow, learn, and develop their unique working styles.*
