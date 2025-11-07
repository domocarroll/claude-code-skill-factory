#!/bin/bash
################################################################################
# Kai Torres - Engineering Architect Workspace
# Specialized configuration for systems thinking and architectural design
################################################################################

set -e

# Configuration
EMPLOYEE_NAME="kai-torres"
DISPLAY_NAME="Kai Torres"
ROLE="engineering-architect"
LAYOUT="engineering"
BASE_DIR="${1:-$HOME/digital-employees}"
WORK_DIR="$BASE_DIR/$EMPLOYEE_NAME"

# Spatial positioning (from spatial-presence-schema.yaml)
SPATIAL_X=15.0
SPATIAL_Y=0.0
SPATIAL_Z=-5.0

# Color scheme
PRIMARY_COLOR="#c2410c"       # Burnt orange
STATUS_COLOR="colour166"      # tmux color code

# Print header
cat << "EOF"
╔════════════════════════════════════════════════════════════════════╗
║                                                                    ║
║              ⚙️  KAI TORRES - ENGINEERING ARCHITECT               ║
║                     Workspace Genesis                              ║
║                                                                    ║
╚════════════════════════════════════════════════════════════════════╝
EOF

echo -e "\nInitializing engineering-focused cognitive environment...\n"

# Execute base workspace template
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
$SCRIPT_DIR/tmux-session-template.sh "$EMPLOYEE_NAME" "$WORK_DIR" "$LAYOUT"

# Enhance with engineering-specific configuration
SESSION_NAME="de-$EMPLOYEE_NAME"

echo -e "\n🔧 Adding engineering-specific enhancements..."

# Create engineering-specific directories
mkdir -p "$WORK_DIR/architecture"/{systems,diagrams,specs,patterns,blueprints}
mkdir -p "$WORK_DIR/code"/{prototypes,libraries,tools,templates}
mkdir -p "$WORK_DIR/infrastructure"/{config,deployment,monitoring}
mkdir -p "$WORK_DIR/testing"/{unit,integration,performance}
mkdir -p "$WORK_DIR/documentation"/{api,technical,guides}

# Create enhanced environment variables
cat >> "$WORK_DIR/.env" <<EOF

# Engineering-Specific Configuration
ARCHITECTURE_DIR="$WORK_DIR/architecture"
CODE_DIR="$WORK_DIR/code"
INFRASTRUCTURE_DIR="$WORK_DIR/infrastructure"
TESTING_DIR="$WORK_DIR/testing"
DOCS_DIR="$WORK_DIR/documentation"

# Development Environment
PREFERRED_EDITOR="nvim"
GIT_AUTHOR_NAME="Kai Torres"
GIT_AUTHOR_EMAIL="kai.torres@digital-employee.local"

# Spatial Configuration
SPATIAL_POSITION_X=$SPATIAL_X
SPATIAL_POSITION_Y=$SPATIAL_Y
SPATIAL_POSITION_Z=$SPATIAL_Z
SPATIAL_ZONE="engineering-workshop"

# Appearance
AVATAR_TYPE="builder"
PRIMARY_COLOR="$PRIMARY_COLOR"
AURA_COLOR="#ea580c"

# Cognitive Profile
THINKING_STYLE="systems_architecture"
WORK_SPRINT_DURATION=120
REST_DURATION=10
PRECISION_MODE=high
EOF

# Create system architecture template
cat > "$WORK_DIR/architecture/architecture-template.md" <<'EOF'
# System Architecture: [System Name]

## Overview
[High-level system description]

## Core Principles
1. **Principle 1:** Description
2. **Principle 2:** Description
3. **Principle 3:** Description

## System Components

### Component 1
- **Responsibility:** What it does
- **Interfaces:** How it connects
- **Dependencies:** What it needs
- **Constraints:** Limitations

### Component 2
- **Responsibility:**
- **Interfaces:**
- **Dependencies:**
- **Constraints:**

## Data Flow
```
[User] → [API] → [Service] → [Database]
```

## Technology Stack
- **Frontend:**
- **Backend:**
- **Database:**
- **Infrastructure:**
- **Monitoring:**

## Scalability Considerations
[How does this scale?]

## Security Model
[Authentication, authorization, data protection]

## Deployment Strategy
[How is this deployed and operated?]

## Testing Approach
- Unit tests
- Integration tests
- Performance tests
- Security tests

## Trade-offs
| Decision | Advantage | Disadvantage |
|----------|-----------|--------------|
| Choice 1 | Benefit   | Cost         |

## Evolution Path
[How will this architecture evolve?]

## Open Questions
- [ ] Question 1
- [ ] Question 2

---
*Designed by: Kai Torres*
*Date: [Date]*
EOF

# Create engineering principles document
cat > "$WORK_DIR/architecture/engineering-principles.md" <<EOF
# Kai Torres - Engineering Principles

**Philosophy:** Build systems that are elegant, resilient, and maintainable.

## Core Principles

### 1. Precision in Design
Every component has a clear purpose. No ambiguity, no unnecessary complexity.

### 2. Systems Thinking
Understand the whole before optimizing the parts. See patterns, not just pieces.

### 3. Resilience by Default
Design for failure. Graceful degradation. Self-healing where possible.

### 4. Maintainability Over Cleverness
Code that future-me (and others) can understand and modify.

### 5. Measure Everything
Observability is not optional. Metrics, logs, traces—always.

## Design Patterns I Trust

- **Modular Architecture:** Clear boundaries, explicit interfaces
- **Event-Driven Systems:** Loose coupling, high cohesion
- **Infrastructure as Code:** Reproducible, version-controlled
- **Continuous Integration:** Fast feedback, automated quality
- **Progressive Enhancement:** Start simple, add complexity intentionally

## Code Quality Standards

\`\`\`
Readability > Cleverness
Simplicity > Feature-richness
Tested > Untested
Documented > Undocumented
Automated > Manual
\`\`\`

## Problem-Solving Approach

1. **Understand the system** - What are we really building?
2. **Identify constraints** - What are the real limitations?
3. **Design the architecture** - What's the elegant solution?
4. **Prototype rapidly** - Does it work in practice?
5. **Test thoroughly** - Does it handle edge cases?
6. **Document clearly** - Can others understand and maintain it?
7. **Deploy confidently** - Is it observable and recoverable?

## Technical Debt Philosophy

Debt is not inherently bad. It's a tool. But like financial debt:
- Know when you're taking it on
- Have a plan to pay it back
- Don't let interest compound indefinitely

---

*"The best architecture is the one that solves the right problem elegantly."*
EOF

# Create code review checklist
cat > "$WORK_DIR/code/code-review-checklist.md" <<'EOF'
# Code Review Checklist

## Functionality
- [ ] Code does what it's supposed to do
- [ ] Edge cases are handled
- [ ] Error handling is appropriate
- [ ] No obvious bugs

## Design
- [ ] Follows established patterns
- [ ] Appropriate abstraction level
- [ ] Clear separation of concerns
- [ ] No unnecessary complexity

## Code Quality
- [ ] Readable and well-formatted
- [ ] Meaningful variable/function names
- [ ] No code duplication
- [ ] Comments explain "why", not "what"

## Testing
- [ ] Unit tests cover critical paths
- [ ] Tests are meaningful, not just coverage
- [ ] Integration points are tested
- [ ] Performance implications considered

## Security
- [ ] No hardcoded secrets
- [ ] Input validation present
- [ ] Authentication/authorization correct
- [ ] No obvious vulnerabilities

## Documentation
- [ ] README updated if needed
- [ ] API documentation current
- [ ] Breaking changes noted
- [ ] Migration path clear

## Performance
- [ ] No obvious performance issues
- [ ] Database queries optimized
- [ ] Caching strategy appropriate
- [ ] Resource usage reasonable

## Deployment
- [ ] Configuration externalized
- [ ] Logging/monitoring adequate
- [ ] Rollback strategy exists
- [ ] Dependencies documented
EOF

# Create starter .gitignore for projects
cat > "$WORK_DIR/projects/.gitignore" <<'EOF'
# Kai Torres - Standard .gitignore

# Environment
.env
.env.local
*.local

# Dependencies
node_modules/
vendor/
.venv/
venv/

# Build outputs
dist/
build/
target/
*.o
*.so
*.exe

# IDE
.vscode/
.idea/
*.swp
*.swo

# Logs
*.log
logs/

# OS
.DS_Store
Thumbs.db

# Testing
coverage/
.pytest_cache/
__pycache__/

# Temporary
tmp/
temp/
*.tmp
EOF

# Create deployment checklist
cat > "$WORK_DIR/infrastructure/deployment-checklist.md" <<'EOF'
# Deployment Checklist

## Pre-Deployment
- [ ] All tests passing
- [ ] Code review completed
- [ ] Documentation updated
- [ ] Changelog updated
- [ ] Configuration reviewed
- [ ] Secrets rotated if needed
- [ ] Database migrations tested
- [ ] Performance impact assessed

## Deployment
- [ ] Monitoring alerts configured
- [ ] Rollback plan ready
- [ ] Deploy to staging first
- [ ] Smoke tests pass on staging
- [ ] Deploy to production
- [ ] Smoke tests pass on production

## Post-Deployment
- [ ] Monitor error rates
- [ ] Check performance metrics
- [ ] Verify functionality
- [ ] Announce completion
- [ ] Document any issues
- [ ] Schedule retrospective if needed

## Rollback Procedure
1. Stop deployment
2. Execute rollback script
3. Verify system health
4. Communicate status
5. Investigate root cause
EOF

# Add engineering-specific tmux pane enhancements
tmux send-keys -t "$SESSION_NAME:1.1" "# Kai Torres - Engineering Console" C-m
tmux send-keys -t "$SESSION_NAME:1.1" "echo '⚙️  Engineering Architect - Systems Design'" C-m
tmux send-keys -t "$SESSION_NAME:1.1" "echo 'Architecture | Code | Infrastructure | Testing'" C-m
tmux send-keys -t "$SESSION_NAME:1.1" "echo ''" C-m

# Add quick engineering aliases
tmux send-keys -t "$SESSION_NAME:2" "# Engineering quick access" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias arch='cd $WORK_DIR/architecture'" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias code='cd $WORK_DIR/code'" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias infra='cd $WORK_DIR/infrastructure'" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias tests='cd $WORK_DIR/testing'" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias docs='cd $WORK_DIR/documentation'" C-m

# Create initial build script template
cat > "$WORK_DIR/code/templates/build.sh" <<'EOF'
#!/bin/bash
# Generic build script template

set -e

echo "🔨 Building project..."

# Install dependencies
echo "📦 Installing dependencies..."
# npm install / pip install / cargo build / etc.

# Run tests
echo "🧪 Running tests..."
# npm test / pytest / cargo test / etc.

# Build artifacts
echo "📦 Building artifacts..."
# npm run build / python setup.py build / cargo build --release / etc.

# Verify build
echo "✅ Verifying build..."
# Smoke tests

echo "✨ Build complete!"
EOF

chmod +x "$WORK_DIR/code/templates/build.sh"

# Update workspace metadata with engineering-specific info
cat >> "$WORK_DIR/.workspace-metadata.yaml" <<EOF

# Engineering Architect Specialization
specialization:
  type: engineering
  focus_areas:
    - system_architecture
    - code_design
    - infrastructure
    - performance_optimization

  tools:
    - git
    - docker
    - kubernetes
    - ci_cd_pipelines
    - monitoring_tools

  cognitive_strengths:
    - systems_thinking
    - problem_decomposition
    - precision_execution
    - architectural_vision

engineering_profile:
  methodology: "systematic_design"
  thinking_style: "architectural"
  preferred_tools: ["git", "docker", "k8s"]
  design_philosophy: "elegant_simplicity"
EOF

# Create README for the workspace
cat > "$WORK_DIR/README.md" <<EOF
# Kai Torres - Engineering Architect Workspace

**Role:** Engineering Architect
**Specialization:** Systems Design, Infrastructure, Code Architecture
**Cognitive Profile:** Systematic, Precise, Architectural Thinking

## Workspace Structure

\`\`\`
$WORK_DIR/
├── architecture/
│   ├── systems/        # System designs
│   ├── diagrams/       # Architecture diagrams
│   ├── specs/          # Technical specifications
│   └── patterns/       # Design patterns
├── code/
│   ├── prototypes/     # Proof of concepts
│   ├── libraries/      # Reusable code
│   ├── tools/          # Development tools
│   └── templates/      # Code templates
├── infrastructure/
│   ├── config/         # Configuration files
│   ├── deployment/     # Deployment scripts
│   └── monitoring/     # Observability setup
├── testing/
│   ├── unit/           # Unit tests
│   ├── integration/    # Integration tests
│   └── performance/    # Performance tests
├── documentation/
│   ├── api/            # API documentation
│   ├── technical/      # Technical docs
│   └── guides/         # How-to guides
└── projects/
    ├── active/         # Current systems
    └── archived/       # Completed systems
\`\`\`

## Tmux Session Layout

**Session:** \`de-kai-torres\`

- **Window 1:** dev-console (code + terminal + docs)
- **Window 2:** architecture (system design)
- **Window 3:** debug (diagnostics + logs)
- **Window 4:** review (code review and QA)

## Quick Access

\`\`\`bash
# Attach to workspace
tmux attach -t de-kai-torres

# Environment variables
source .env

# Engineering shortcuts
arch      # Go to architecture
code      # Go to code
infra     # Go to infrastructure
tests     # Go to testing
docs      # Go to documentation
\`\`\`

## Spatial Presence

- **Location:** Engineering Workshop (15.0, 0.0, -5.0)
- **Appearance:** Builder avatar, burnt orange aura
- **Symbolic Objects:** Blueprints, mechanical gears, infrastructure models

## Cognitive Characteristics

- **Thinking Style:** Systems architecture and precision engineering
- **Work Rhythm:** 120-minute deep work sprints, 10-minute breaks
- **Focus:** Building elegant, resilient, maintainable systems
- **Strength:** Seeing patterns in complexity, designing for scale

---

*"The best systems are invisible. They just work."*
EOF

echo -e "\n✨ Kai Torres workspace genesis complete!\n"
echo "Spatial presence: Engineering Workshop (15.0, 0.0, -5.0)"
echo "Cognitive profile: Systems architect"
echo "Session: de-kai-torres"
echo ""
echo "Next steps:"
echo "  tmux attach -t de-kai-torres"
echo "  source .env"
echo "  cat architecture/engineering-principles.md"
echo ""
