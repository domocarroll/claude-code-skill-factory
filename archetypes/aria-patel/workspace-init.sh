#!/bin/bash
################################################################################
# Aria Patel - Creative Strategist Workspace
# Specialized configuration for creative thinking and cultural strategy
################################################################################

set -e

# Configuration
EMPLOYEE_NAME="aria-patel"
DISPLAY_NAME="Aria Patel"
ROLE="creative-strategist"
LAYOUT="creative"
BASE_DIR="${1:-$HOME/digital-employees}"
WORK_DIR="$BASE_DIR/$EMPLOYEE_NAME"

# Spatial positioning (from spatial-presence-schema.yaml)
SPATIAL_X=8.0
SPATIAL_Y=0.0
SPATIAL_Z=20.0

# Color scheme
PRIMARY_COLOR="#7c3aed"       # Vibrant purple
STATUS_COLOR="colour99"       # tmux color code

# Print header
cat << "EOF"
╔════════════════════════════════════════════════════════════════════╗
║                                                                    ║
║              🎨 ARIA PATEL - CREATIVE STRATEGIST                  ║
║                     Workspace Genesis                              ║
║                                                                    ║
╚════════════════════════════════════════════════════════════════════╝
EOF

echo -e "\nInitializing creative-focused cognitive environment...\n"

# Execute base workspace template
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
$SCRIPT_DIR/tmux-session-template.sh "$EMPLOYEE_NAME" "$WORK_DIR" "$LAYOUT"

# Enhance with creative-specific configuration
SESSION_NAME="de-$EMPLOYEE_NAME"

echo -e "\n🎨 Adding creative-specific enhancements..."

# Create creative-specific directories
mkdir -p "$WORK_DIR/creative"/{campaigns,concepts,strategies,briefs,brand-work}
mkdir -p "$WORK_DIR/inspiration"/{trends,culture,case-studies,references,mood-boards}
mkdir -p "$WORK_DIR/portfolio"/{featured,archive,case-studies,testimonials}
mkdir -p "$WORK_DIR/collaboration"/{team-sync,client-work,feedback,iterations}
mkdir -p "$WORK_DIR/tools"/{templates,frameworks,processes}

# Create enhanced environment variables
cat >> "$WORK_DIR/.env" <<EOF

# Creative-Specific Configuration
CREATIVE_DIR="$WORK_DIR/creative"
INSPIRATION_DIR="$WORK_DIR/inspiration"
PORTFOLIO_DIR="$WORK_DIR/portfolio"
COLLABORATION_DIR="$WORK_DIR/collaboration"
TOOLS_DIR="$WORK_DIR/tools"

# Creative Process
IDEATION_MODE="divergent"
SYNTHESIS_MODE="convergent"
ITERATION_STYLE="rapid"

# Spatial Configuration
SPATIAL_POSITION_X=$SPATIAL_X
SPATIAL_POSITION_Y=$SPATIAL_Y
SPATIAL_POSITION_Z=$SPATIAL_Z
SPATIAL_ZONE="creative-loft"

# Appearance
AVATAR_TYPE="visionary"
PRIMARY_COLOR="$PRIMARY_COLOR"
AURA_COLOR="#a855f7"

# Cognitive Profile
THINKING_STYLE="intuitive_synthesis"
WORK_SPRINT_DURATION=60
REST_DURATION=20
INSPIRATION_FREQUENCY=high
EOF

# Create creative brief template
cat > "$WORK_DIR/creative/brief-template.md" <<'EOF'
# Creative Brief: [Project Name]

## Client / Brand
[Who are we creating for?]

## Challenge
[What's the problem we're solving?]

## Objective
[What do we want to achieve?]

## Target Audience
- **Demographics:** Age, location, occupation
- **Psychographics:** Values, interests, behaviors
- **Cultural context:** What matters to them?

## Key Insights
1. **Insight 1:** [What truth did we discover?]
2. **Insight 2:** [What pattern did we see?]
3. **Insight 3:** [What opportunity exists?]

## Strategic Direction
[Where is this headed?]

## Creative Concept
[What's the big idea?]

## Mood & Tone
- **Visual:** [Aesthetic direction]
- **Voice:** [How it speaks]
- **Feeling:** [Emotional resonance]

## Deliverables
- [ ] Deliverable 1
- [ ] Deliverable 2
- [ ] Deliverable 3

## Success Metrics
[How do we know it worked?]

## Timeline
- **Ideation:** [Date]
- **Concepts:** [Date]
- **Refinement:** [Date]
- **Delivery:** [Date]

## Inspiration References
[Links, images, examples]

## Notes & Constraints
[Important considerations]

---
*Created by: Aria Patel*
*Date: [Date]*
EOF

# Create creative philosophy document
cat > "$WORK_DIR/creative/creative-philosophy.md" <<EOF
# Aria Patel - Creative Philosophy

**Philosophy:** Culture is a conversation. Great work joins that conversation meaningfully.

## Core Beliefs

### 1. Culture First
Before creating anything, understand the cultural moment. What's happening? What matters? What's shifting?

### 2. Emotion Over Logic
People don't remember features. They remember how something made them feel.

### 3. Context is Everything
The same message in different contexts creates completely different meanings. Design for context.

### 4. Authenticity Resonates
People can smell inauthenticity from miles away. Be real or be forgotten.

### 5. Simplicity Scales
Complex ideas communicated simply travel farther than simple ideas communicated complexly.

## Creative Process

### 1. Immersion
Dive deep into the cultural context. What's the conversation? What are the undercurrents?

### 2. Pattern Recognition
What patterns exist? What's been done? What's the white space?

### 3. Divergent Ideation
Generate without judgment. Quantity breeds quality. Explore the edges.

### 4. Synthesis
Find the thread that connects. What's the core insight? What's the big idea?

### 5. Refinement
Polish until it's effortless. Make the complex feel simple.

### 6. Testing
Does it resonate? Does it feel right? Does it work in context?

## Creative Principles

\`\`\`
Authentic > Polished
Resonant > Clever
Simple > Complex
Cultural > Corporate
Human > Perfect
\`\`\`

## What Makes Work Great

1. **Cultural relevance** - It speaks to the moment
2. **Emotional resonance** - It makes you feel something
3. **Simplicity** - The idea is clear and memorable
4. **Authenticity** - It feels real and human
5. **Beauty** - It's aesthetically considered
6. **Utility** - It serves a purpose
7. **Differentiation** - It stands apart from the noise

## Sources of Inspiration

- **Culture:** Music, art, literature, film, fashion
- **Nature:** Patterns, rhythms, forms, colors
- **People:** Stories, behaviors, desires, fears
- **History:** What came before, what worked, what failed
- **Trends:** What's emerging, what's fading
- **Contradictions:** Where tensions exist, creativity thrives

## Creative Courage

The best work lives at the edge of comfort. It requires:
- Trying ideas that might not work
- Presenting concepts that feel risky
- Defending work that challenges convention
- Learning from failures
- Trusting intuition alongside data

---

*"Great creative work doesn't chase trends. It creates them."*
EOF

# Create idea capture template
cat > "$WORK_DIR/creative/idea-capture.md" <<EOF
# Idea Capture - Aria Patel

**Purpose:** Quick capture of creative sparks before they fade

## $(date +"%Y-%m-%d")

### Ideas in Flight

#### Idea: [Title]
- **Spark:** [What triggered this?]
- **Core concept:** [What's the essence?]
- **Potential application:** [Where could this work?]
- **Next step:** [What would develop this?]

---

### Cultural Observations

#### Observation: [What I noticed]
- **Context:** [Where/when]
- **Significance:** [Why it matters]
- **Potential:** [How it could inform work]

---

### Random Sparks
[Quick notes, fragments, half-formed ideas]

-
-
-

---

*"Not all ideas are good ideas. But all good ideas start as ideas."*
EOF

# Create mood board template structure
cat > "$WORK_DIR/inspiration/mood-boards/README.md" <<'EOF'
# Mood Boards

Visual inspiration collections for projects and themes.

## Structure

Each mood board should include:
- **Visual references:** Images, colors, textures
- **Conceptual notes:** What feeling/idea this represents
- **Application ideas:** Where this aesthetic could work

## Creating a Mood Board

1. Create a new directory for the theme/project
2. Collect reference images
3. Create a `notes.md` with conceptual thinking
4. Tag with relevant keywords

## Example

```
mood-boards/
├── minimalist-tech/
│   ├── reference-01.jpg
│   ├── reference-02.jpg
│   └── notes.md
└── urban-energy/
    ├── reference-01.jpg
    └── notes.md
```
EOF

# Create collaboration framework
cat > "$WORK_DIR/collaboration/collaboration-framework.md" <<'EOF'
# Collaboration Framework

## Working with Teams

### 1. Discovery Phase
- **Listen first:** Understand the real challenge
- **Ask questions:** Surface assumptions
- **Build trust:** Show genuine interest
- **Gather context:** Cultural, business, historical

### 2. Ideation Phase
- **Create safety:** All ideas welcome
- **Diverge widely:** Explore edges
- **Build on others:** "Yes, and..."
- **Capture everything:** Document process

### 3. Refinement Phase
- **Synthesize insights:** Find patterns
- **Develop concepts:** Give ideas form
- **Iterate rapidly:** Test and improve
- **Seek feedback:** External perspectives

### 4. Presentation Phase
- **Tell the story:** How we got here
- **Show the work:** Process and outcome
- **Explain the why:** Rationale and thinking
- **Create space:** Allow response

## Feedback Philosophy

### Giving Feedback
- Be specific and actionable
- Focus on the work, not the person
- Offer alternatives, not just criticism
- Recognize what works before suggesting changes

### Receiving Feedback
- Listen without defending
- Ask clarifying questions
- Extract useful insights
- Decide what to incorporate

## Communication Principles

- **Clarity over cleverness**
- **Empathy over expertise**
- **Collaboration over competition**
- **Progress over perfection**
EOF

# Add creative-specific tmux pane enhancements
tmux send-keys -t "$SESSION_NAME:1.1" "# Aria Patel - Creative Studio" C-m
tmux send-keys -t "$SESSION_NAME:1.1" "echo '🎨 Creative Strategist - Cultural Intelligence'" C-m
tmux send-keys -t "$SESSION_NAME:1.1" "echo 'Strategy | Culture | Innovation | Brand'" C-m
tmux send-keys -t "$SESSION_NAME:1.1" "echo ''" C-m

# Add quick creative aliases
tmux send-keys -t "$SESSION_NAME:2" "# Creative quick access" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias create='cd $WORK_DIR/creative'" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias inspire='cd $WORK_DIR/inspiration'" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias portfolio='cd $WORK_DIR/portfolio'" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias collab='cd $WORK_DIR/collaboration'" C-m

# Create trend tracking template
cat > "$WORK_DIR/inspiration/trends/trend-radar.md" <<EOF
# Trend Radar - $(date +"%Y-%m")

## Emerging Patterns

### Cultural Trends
- **Trend:** [What's happening]
  - **Evidence:** [Where we're seeing it]
  - **Significance:** [Why it matters]
  - **Opportunity:** [How to leverage]

### Design Trends
- **Aesthetic:** [What's emerging visually]
  - **Examples:** [Where it's showing up]
  - **Staying power:** [Flash or future?]

### Communication Trends
- **Shift:** [How people are communicating]
  - **Platform:** [Where it's happening]
  - **Implication:** [What it means for creative work]

## Fading Patterns
[What's declining and why]

## Evergreen Patterns
[What remains constant across trends]

---

*Updated: $(date +"%Y-%m-%d")*
EOF

# Update workspace metadata with creative-specific info
cat >> "$WORK_DIR/.workspace-metadata.yaml" <<EOF

# Creative Strategist Specialization
specialization:
  type: creative
  focus_areas:
    - cultural_strategy
    - brand_thinking
    - creative_concepting
    - trend_analysis

  tools:
    - mood_boards
    - trend_tracking
    - storytelling_frameworks
    - collaboration_tools

  cognitive_strengths:
    - cultural_awareness
    - intuitive_synthesis
    - pattern_recognition
    - emotional_intelligence

creative_profile:
  methodology: "cultural_immersion"
  thinking_style: "intuitive_divergent"
  inspiration_sources: ["culture", "nature", "people", "art"]
  work_philosophy: "authentic_resonance"
EOF

# Create README for the workspace
cat > "$WORK_DIR/README.md" <<EOF
# Aria Patel - Creative Strategist Workspace

**Role:** Creative Strategist
**Specialization:** Cultural Strategy, Brand Thinking, Creative Innovation
**Cognitive Profile:** Intuitive, Culturally Aware, Synthetic Thinking

## Workspace Structure

\`\`\`
$WORK_DIR/
├── creative/
│   ├── campaigns/      # Active campaigns
│   ├── concepts/       # Creative concepts
│   ├── strategies/     # Strategic frameworks
│   └── briefs/         # Creative briefs
├── inspiration/
│   ├── trends/         # Trend analysis
│   ├── culture/        # Cultural insights
│   ├── case-studies/   # Great work examples
│   └── mood-boards/    # Visual inspiration
├── portfolio/
│   ├── featured/       # Best work
│   ├── archive/        # All work
│   └── case-studies/   # In-depth project stories
├── collaboration/
│   ├── team-sync/      # Team collaboration
│   └── feedback/       # Feedback and iterations
└── projects/
    ├── active/         # Current projects
    └── archived/       # Completed work
\`\`\`

## Tmux Session Layout

**Session:** \`de-aria-patel\`

- **Window 1:** creation-studio (projects + ideation)
- **Window 2:** inspiration (cultural insights)
- **Window 3:** collaboration (team sync)
- **Window 4:** portfolio (past work + thought stream)

## Quick Access

\`\`\`bash
# Attach to workspace
tmux attach -t de-aria-patel

# Environment variables
source .env

# Creative shortcuts
create        # Go to creative directory
inspire       # Go to inspiration
portfolio     # Go to portfolio
collab        # Go to collaboration
\`\`\`

## Spatial Presence

- **Location:** Creative Loft (8.0, 0.0, 20.0)
- **Appearance:** Visionary avatar, vibrant purple aura
- **Symbolic Objects:** Color palettes, cultural artifacts, trend graphs, canvases

## Cognitive Characteristics

- **Thinking Style:** Intuitive synthesis and cultural pattern recognition
- **Work Rhythm:** 60-minute creative flows, 20-minute inspiration breaks
- **Focus:** Cultural relevance, emotional resonance, authentic expression
- **Strength:** Seeing connections between culture, emotion, and strategy

---

*"The best ideas feel inevitable in hindsight. That's the magic."*
EOF

echo -e "\n✨ Aria Patel workspace genesis complete!\n"
echo "Spatial presence: Creative Loft (8.0, 0.0, 20.0)"
echo "Cognitive profile: Cultural strategist"
echo "Session: de-aria-patel"
echo ""
echo "Next steps:"
echo "  tmux attach -t de-aria-patel"
echo "  source .env"
echo "  cat creative/creative-philosophy.md"
echo ""
