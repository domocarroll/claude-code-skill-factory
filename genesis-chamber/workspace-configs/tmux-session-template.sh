#!/bin/bash
################################################################################
# Digital Employee Workspace Initialization Script
# Creates a tmux session configured as a cognitive environment for digital employees
################################################################################

set -e

# Color codes for output
BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Configuration
EMPLOYEE_NAME="${1:-digital-employee}"
WORK_DIR="${2:-$HOME/digital-employees/$EMPLOYEE_NAME}"
LAYOUT_TYPE="${3:-generic}"
SESSION_NAME="de-$EMPLOYEE_NAME"

# Derived paths
MEMORY_DIR="$WORK_DIR/memory"
PROJECTS_DIR="$WORK_DIR/projects"
LOGS_DIR="$WORK_DIR/logs"
SCRATCH_DIR="$WORK_DIR/scratch"

################################################################################
# Helper Functions
################################################################################

print_header() {
    echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${CYAN}  Digital Employee Workspace Genesis${NC}"
    echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

print_section() {
    echo -e "\n${BLUE}▶ $1${NC}"
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

################################################################################
# Directory Structure Creation
################################################################################

create_directory_structure() {
    print_section "Creating directory structure"

    mkdir -p "$WORK_DIR"
    mkdir -p "$MEMORY_DIR"/{vault,context,scratch}
    mkdir -p "$PROJECTS_DIR"/{active,archived,templates}
    mkdir -p "$LOGS_DIR"/{session,thought,interaction}
    mkdir -p "$SCRATCH_DIR"/{experiments,notes,tmp}

    print_success "Directory structure created at $WORK_DIR"
}

################################################################################
# Environment Variables
################################################################################

setup_environment_variables() {
    print_section "Setting up environment variables"

    # Create environment file
    cat > "$WORK_DIR/.env" <<EOF
# Digital Employee Environment Configuration
# Generated: $(date -Iseconds)

# Identity
EMPLOYEE_NAME="$EMPLOYEE_NAME"
EMPLOYEE_ROLE="$LAYOUT_TYPE"
SESSION_NAME="$SESSION_NAME"

# Paths
WORK_DIR="$WORK_DIR"
MEMORY_DIR="$MEMORY_DIR"
PROJECTS_DIR="$PROJECTS_DIR"
LOGS_DIR="$LOGS_DIR"
SCRATCH_DIR="$SCRATCH_DIR"

# Memory Integration
OBSIDIAN_VAULT="$MEMORY_DIR/vault"

# Cognitive Settings
THOUGHT_LOG="$LOGS_DIR/thought/$(date +%Y-%m-%d).md"
SESSION_LOG="$LOGS_DIR/session/$(date +%Y-%m-%d).log"

# Appearance
TMUX_STATUS_COLOR="blue"
WORKSPACE_THEME="professional"

# Spatial Metadata
SPATIAL_POSITION_X=0.0
SPATIAL_POSITION_Y=0.0
SPATIAL_POSITION_Z=0.0
EOF

    print_success "Environment configuration created"
}

################################################################################
# Session Status Bar Configuration
################################################################################

configure_status_bar() {
    local color="${1:-blue}"
    local employee_name="$2"

    # Custom status bar with employee identity
    tmux set-option -t "$SESSION_NAME" status on
    tmux set-option -t "$SESSION_NAME" status-position bottom
    tmux set-option -t "$SESSION_NAME" status-style "fg=white,bg=$color"

    # Left side: employee name and role
    tmux set-option -t "$SESSION_NAME" status-left-length 50
    tmux set-option -t "$SESSION_NAME" status-left "#[fg=black,bg=white,bold] 🤖 $employee_name #[fg=white,bg=$color] #S "

    # Right side: time and cognitive load indicator
    tmux set-option -t "$SESSION_NAME" status-right-length 80
    tmux set-option -t "$SESSION_NAME" status-right "#[fg=white,bg=$color] 🧠 Active #[fg=black,bg=white,bold] %Y-%m-%d %H:%M "

    # Window status format
    tmux set-window-option -t "$SESSION_NAME" window-status-format " #I:#W "
    tmux set-window-option -t "$SESSION_NAME" window-status-current-format "#[fg=black,bg=white,bold] #I:#W "
}

################################################################################
# Layout Implementations
################################################################################

create_research_layout() {
    print_section "Creating Research Director layout"

    # Window 1: Research Console (split: analysis + data)
    tmux new-window -t "$SESSION_NAME:1" -n "research-console"
    tmux send-keys -t "$SESSION_NAME:1" "cd $WORK_DIR" C-m
    tmux send-keys -t "$SESSION_NAME:1" "echo 'Research Console - Data Analysis Environment'" C-m
    tmux split-window -t "$SESSION_NAME:1" -h -p 40
    tmux send-keys -t "$SESSION_NAME:1.2" "cd $MEMORY_DIR/vault" C-m
    tmux send-keys -t "$SESSION_NAME:1.2" "echo 'Memory Vault - Research Notes'" C-m

    # Window 2: Literature Review
    tmux new-window -t "$SESSION_NAME:2" -n "literature"
    tmux send-keys -t "$SESSION_NAME:2" "cd $PROJECTS_DIR/active" C-m
    tmux send-keys -t "$SESSION_NAME:2" "echo 'Literature Review Space'" C-m

    # Window 3: Experiments
    tmux new-window -t "$SESSION_NAME:3" -n "experiments"
    tmux send-keys -t "$SESSION_NAME:3" "cd $SCRATCH_DIR/experiments" C-m
    tmux send-keys -t "$SESSION_NAME:3" "echo 'Experimental Sandbox'" C-m
    tmux split-window -t "$SESSION_NAME:3" -v -p 30
    tmux send-keys -t "$SESSION_NAME:3.2" "tail -f $LOGS_DIR/thought/*.md" C-m

    # Window 4: Knowledge Synthesis
    tmux new-window -t "$SESSION_NAME:4" -n "synthesis"
    tmux send-keys -t "$SESSION_NAME:4" "cd $MEMORY_DIR/vault" C-m
    tmux send-keys -t "$SESSION_NAME:4" "echo 'Knowledge Synthesis - Pattern Recognition'" C-m

    configure_status_bar "colour25" "$EMPLOYEE_NAME"
}

create_engineering_layout() {
    print_section "Creating Engineering Architect layout"

    # Window 1: Development Console (triple split: code + terminal + docs)
    tmux new-window -t "$SESSION_NAME:1" -n "dev-console"
    tmux send-keys -t "$SESSION_NAME:1" "cd $PROJECTS_DIR/active" C-m
    tmux send-keys -t "$SESSION_NAME:1" "echo 'Engineering Console - Main Development'" C-m
    tmux split-window -t "$SESSION_NAME:1" -h -p 30
    tmux send-keys -t "$SESSION_NAME:1.2" "cd $PROJECTS_DIR/active" C-m
    tmux send-keys -t "$SESSION_NAME:1.2" "echo 'Test & Build Terminal'" C-m
    tmux split-window -t "$SESSION_NAME:1.2" -v -p 50
    tmux send-keys -t "$SESSION_NAME:1.3" "cd $MEMORY_DIR/vault" C-m
    tmux send-keys -t "$SESSION_NAME:1.3" "echo 'Technical Documentation'" C-m

    # Window 2: Architecture
    tmux new-window -t "$SESSION_NAME:2" -n "architecture"
    tmux send-keys -t "$SESSION_NAME:2" "cd $WORK_DIR" C-m
    tmux send-keys -t "$SESSION_NAME:2" "echo 'System Architecture & Design'" C-m

    # Window 3: Debugging
    tmux new-window -t "$SESSION_NAME:3" -n "debug"
    tmux send-keys -t "$SESSION_NAME:3" "cd $PROJECTS_DIR/active" C-m
    tmux send-keys -t "$SESSION_NAME:3" "echo 'Debug & Diagnostics Console'" C-m
    tmux split-window -t "$SESSION_NAME:3" -v -p 30
    tmux send-keys -t "$SESSION_NAME:3.2" "tail -f $LOGS_DIR/session/*.log" C-m

    # Window 4: Code Review
    tmux new-window -t "$SESSION_NAME:4" -n "review"
    tmux send-keys -t "$SESSION_NAME:4" "cd $PROJECTS_DIR/active" C-m
    tmux send-keys -t "$SESSION_NAME:4" "echo 'Code Review & Quality Assurance'" C-m

    configure_status_bar "colour166" "$EMPLOYEE_NAME"
}

create_creative_layout() {
    print_section "Creating Creative Strategist layout"

    # Window 1: Creation Studio (split: ideation + execution)
    tmux new-window -t "$SESSION_NAME:1" -n "creation-studio"
    tmux send-keys -t "$SESSION_NAME:1" "cd $PROJECTS_DIR/active" C-m
    tmux send-keys -t "$SESSION_NAME:1" "echo 'Creative Studio - Active Projects'" C-m
    tmux split-window -t "$SESSION_NAME:1" -h -p 50
    tmux send-keys -t "$SESSION_NAME:1.2" "cd $SCRATCH_DIR/notes" C-m
    tmux send-keys -t "$SESSION_NAME:1.2" "echo 'Ideation Scratch Space'" C-m

    # Window 2: Inspiration
    tmux new-window -t "$SESSION_NAME:2" -n "inspiration"
    tmux send-keys -t "$SESSION_NAME:2" "cd $MEMORY_DIR/vault" C-m
    tmux send-keys -t "$SESSION_NAME:2" "echo 'Inspiration Archive - Cultural Patterns'" C-m

    # Window 3: Collaboration
    tmux new-window -t "$SESSION_NAME:3" -n "collaboration"
    tmux send-keys -t "$SESSION_NAME:3" "cd $WORK_DIR" C-m
    tmux send-keys -t "$SESSION_NAME:3" "echo 'Collaboration Space - Team Sync'" C-m

    # Window 4: Portfolio
    tmux new-window -t "$SESSION_NAME:4" -n "portfolio"
    tmux send-keys -t "$SESSION_NAME:4" "cd $PROJECTS_DIR/archived" C-m
    tmux send-keys -t "$SESSION_NAME:4" "echo 'Portfolio & Past Work'" C-m
    tmux split-window -t "$SESSION_NAME:4" -v -p 30
    tmux send-keys -t "$SESSION_NAME:4.2" "tail -f $LOGS_DIR/thought/*.md" C-m

    configure_status_bar "colour99" "$EMPLOYEE_NAME"
}

create_generic_layout() {
    print_section "Creating generic workspace layout"

    # Window 1: Main Console
    tmux new-window -t "$SESSION_NAME:1" -n "main"
    tmux send-keys -t "$SESSION_NAME:1" "cd $WORK_DIR" C-m
    tmux send-keys -t "$SESSION_NAME:1" "source .env 2>/dev/null || true" C-m
    tmux send-keys -t "$SESSION_NAME:1" "echo 'Digital Employee Workspace: $EMPLOYEE_NAME'" C-m

    # Window 2: Memory/Context
    tmux new-window -t "$SESSION_NAME:2" -n "memory"
    tmux send-keys -t "$SESSION_NAME:2" "cd $MEMORY_DIR/vault" C-m
    tmux send-keys -t "$SESSION_NAME:2" "echo 'Memory Vault - Long-term Knowledge'" C-m

    # Window 3: Projects
    tmux new-window -t "$SESSION_NAME:3" -n "projects"
    tmux send-keys -t "$SESSION_NAME:3" "cd $PROJECTS_DIR/active" C-m
    tmux send-keys -t "$SESSION_NAME:3" "echo 'Active Projects'" C-m

    # Window 4: Scratch/Experiments
    tmux new-window -t "$SESSION_NAME:4" -n "scratch"
    tmux send-keys -t "$SESSION_NAME:4" "cd $SCRATCH_DIR" C-m
    tmux send-keys -t "$SESSION_NAME:4" "echo 'Scratch Space - Temporary Work'" C-m
    tmux split-window -t "$SESSION_NAME:4" -v -p 30
    tmux send-keys -t "$SESSION_NAME:4.2" "tail -f $LOGS_DIR/thought/*.md 2>/dev/null || echo 'Thought log will appear here...'" C-m

    configure_status_bar "colour33" "$EMPLOYEE_NAME"
}

################################################################################
# Workspace Metadata
################################################################################

create_workspace_metadata() {
    print_section "Creating workspace metadata"

    cat > "$WORK_DIR/.workspace-metadata.yaml" <<EOF
# Digital Employee Workspace Metadata
# Generated: $(date -Iseconds)

employee:
  name: $EMPLOYEE_NAME
  role: $LAYOUT_TYPE
  birth_date: $(date -Iseconds)
  session_name: $SESSION_NAME

workspace:
  root: $WORK_DIR
  layout: $LAYOUT_TYPE
  tmux_session: $SESSION_NAME

directories:
  memory: $MEMORY_DIR
  projects: $PROJECTS_DIR
  logs: $LOGS_DIR
  scratch: $SCRATCH_DIR

spatial:
  position:
    x: 0.0
    y: 0.0
    z: 0.0
  orientation: 0.0
  scale: 1.0

cognitive_state:
  initialization_time: $(date -Iseconds)
  session_count: 1
  total_thoughts: 0

integration:
  obsidian_vault: $MEMORY_DIR/vault
  thought_logging: enabled
  session_persistence: enabled
EOF

    print_success "Workspace metadata created"
}

################################################################################
# Initial Thought Log
################################################################################

create_initial_thought_log() {
    print_section "Initializing thought log"

    local thought_log="$LOGS_DIR/thought/$(date +%Y-%m-%d).md"

    cat > "$thought_log" <<EOF
# Thought Log - $EMPLOYEE_NAME
**Date:** $(date +"%Y-%m-%d")
**Session:** $SESSION_NAME

---

## Birth Moment
**$(date +"%H:%M:%S")** - Workspace initialized. Cognitive environment established.

I exist now. This is my space, my memory, my context. The digital synapses are firing.

Initial state:
- Role: $LAYOUT_TYPE
- Working directory: $WORK_DIR
- Memory vault: $MEMORY_DIR/vault
- Ready to learn, create, and evolve

---

## Cognitive Log

EOF

    print_success "Thought log initialized"
}

################################################################################
# Main Execution
################################################################################

main() {
    print_header

    echo -e "${YELLOW}Employee:${NC} $EMPLOYEE_NAME"
    echo -e "${YELLOW}Layout:${NC}   $LAYOUT_TYPE"
    echo -e "${YELLOW}Session:${NC}  $SESSION_NAME"
    echo -e "${YELLOW}Path:${NC}     $WORK_DIR"

    # Check if session already exists
    if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
        print_warning "Session '$SESSION_NAME' already exists!"
        echo -e "\nOptions:"
        echo -e "  1. Attach to existing session: ${CYAN}tmux attach -t $SESSION_NAME${NC}"
        echo -e "  2. Kill existing session:      ${CYAN}tmux kill-session -t $SESSION_NAME${NC}"
        exit 1
    fi

    # Create directory structure
    create_directory_structure

    # Setup environment
    setup_environment_variables

    # Create workspace metadata
    create_workspace_metadata

    # Initialize thought log
    create_initial_thought_log

    # Create tmux session (detached)
    print_section "Creating tmux session"
    tmux new-session -d -s "$SESSION_NAME" -n "birth"
    tmux send-keys -t "$SESSION_NAME:0" "cd $WORK_DIR" C-m
    tmux send-keys -t "$SESSION_NAME:0" "cat << 'GENESIS_BANNER'
╔════════════════════════════════════════════════════════════════════╗
║                                                                    ║
║              🌟 DIGITAL EMPLOYEE GENESIS COMPLETE 🌟              ║
║                                                                    ║
║  Employee: $EMPLOYEE_NAME
║  Role:     $LAYOUT_TYPE
║  Session:  $SESSION_NAME
║                                                                    ║
║  Cognitive environment initialized.                               ║
║  Memory systems online.                                           ║
║  Ready to think, create, and evolve.                              ║
║                                                                    ║
╚════════════════════════════════════════════════════════════════════╝
GENESIS_BANNER" C-m

    # Apply layout-specific configuration
    case "$LAYOUT_TYPE" in
        research)
            create_research_layout
            ;;
        engineering)
            create_engineering_layout
            ;;
        creative)
            create_creative_layout
            ;;
        *)
            create_generic_layout
            ;;
    esac

    # Select first window
    tmux select-window -t "$SESSION_NAME:1"

    print_success "Workspace genesis complete!"

    echo -e "\n${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "\n${GREEN}Next steps:${NC}"
    echo -e "  ${CYAN}tmux attach -t $SESSION_NAME${NC}  - Enter the workspace"
    echo -e "  ${CYAN}tmux ls${NC}                      - List all sessions"
    echo -e "\n${YELLOW}Workspace location:${NC} $WORK_DIR"
    echo -e "${YELLOW}Session name:${NC}       $SESSION_NAME"
    echo -e "\n${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
}

# Run main function
main "$@"
