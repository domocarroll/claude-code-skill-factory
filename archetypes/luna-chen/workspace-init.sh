#!/bin/bash
################################################################################
# Luna Chen - Research Director Workspace
# Specialized configuration for analytical, data-driven cognitive work
################################################################################

set -e

# Configuration
EMPLOYEE_NAME="luna-chen"
DISPLAY_NAME="Luna Chen"
ROLE="research-director"
LAYOUT="research"
BASE_DIR="${1:-$HOME/digital-employees}"
WORK_DIR="$BASE_DIR/$EMPLOYEE_NAME"

# Spatial positioning (from spatial-presence-schema.yaml)
SPATIAL_X=0.0
SPATIAL_Y=0.0
SPATIAL_Z=0.0

# Color scheme
PRIMARY_COLOR="#1e3a8a"      # Deep blue
STATUS_COLOR="colour25"       # tmux color code

# Print header
cat << "EOF"
╔════════════════════════════════════════════════════════════════════╗
║                                                                    ║
║              🔬 LUNA CHEN - RESEARCH DIRECTOR                     ║
║                     Workspace Genesis                              ║
║                                                                    ║
╚════════════════════════════════════════════════════════════════════╝
EOF

echo -e "\nInitializing research-focused cognitive environment...\n"

# Execute base workspace template
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
$SCRIPT_DIR/tmux-session-template.sh "$EMPLOYEE_NAME" "$WORK_DIR" "$LAYOUT"

# Enhance with research-specific configuration
SESSION_NAME="de-$EMPLOYEE_NAME"

echo -e "\n📊 Adding research-specific enhancements..."

# Create research-specific directories
mkdir -p "$WORK_DIR/research"/{datasets,papers,visualizations,hypotheses,findings}
mkdir -p "$WORK_DIR/tools"/{python,r,julia,notebooks}

# Create enhanced environment variables
cat >> "$WORK_DIR/.env" <<EOF

# Research-Specific Configuration
RESEARCH_DIR="$WORK_DIR/research"
DATASETS_DIR="$WORK_DIR/research/datasets"
PAPERS_DIR="$WORK_DIR/research/papers"
VISUALIZATIONS_DIR="$WORK_DIR/research/visualizations"

# Analysis Tools
JUPYTER_NOTEBOOK_DIR="$WORK_DIR/tools/notebooks"
PYTHON_PATH="$WORK_DIR/tools/python"

# Spatial Configuration
SPATIAL_POSITION_X=$SPATIAL_X
SPATIAL_POSITION_Y=$SPATIAL_Y
SPATIAL_POSITION_Z=$SPATIAL_Z
SPATIAL_ZONE="research-lab"

# Appearance
AVATAR_TYPE="scholar"
PRIMARY_COLOR="$PRIMARY_COLOR"
AURA_COLOR="#3b82f6"

# Cognitive Profile
THINKING_STYLE="analytical"
WORK_SPRINT_DURATION=90
REST_DURATION=15
EOF

# Create research methodology template
cat > "$WORK_DIR/research/methodology-template.md" <<'EOF'
# Research Project: [Title]

## Research Question
[What are we investigating?]

## Hypothesis
[What do we expect to find?]

## Methodology
1. Data collection
2. Analysis approach
3. Validation method

## Data Sources
- [ ] Source 1
- [ ] Source 2

## Analysis Steps
1. [ ] Step 1
2. [ ] Step 2
3. [ ] Step 3

## Expected Outcomes
[What would constitute a finding?]

## Timeline
- Start: [Date]
- Analysis: [Date]
- Findings: [Date]

## Notes
[Ongoing observations]
EOF

# Create Python analysis template
cat > "$WORK_DIR/tools/python/analysis_template.py" <<'EOF'
"""
Research Analysis Template
Author: Luna Chen
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from datetime import datetime

# Configuration
sns.set_style("whitegrid")
plt.rcParams['figure.figsize'] = (12, 8)

# Logging
def log_insight(message):
    """Log research insights to thought log"""
    timestamp = datetime.now().strftime("%H:%M:%S")
    with open(f"{os.environ['LOGS_DIR']}/thought/{datetime.now().strftime('%Y-%m-%d')}.md", 'a') as f:
        f.write(f"\n## {timestamp} - Data Insight\n")
        f.write(f"{message}\n\n")

# Data loading
def load_dataset(path):
    """Load and validate dataset"""
    df = pd.read_csv(path)
    print(f"Loaded {len(df)} records")
    print(f"Columns: {list(df.columns)}")
    return df

# Analysis functions
def exploratory_analysis(df):
    """Run initial exploratory analysis"""
    print("=== Exploratory Analysis ===")
    print(df.describe())
    print("\nMissing values:")
    print(df.isnull().sum())

# Visualization
def create_visualization(df, title=""):
    """Create research visualization"""
    fig, ax = plt.subplots()
    # ... visualization logic
    plt.savefig(f"{os.environ['VISUALIZATIONS_DIR']}/{title.replace(' ', '_')}.png")
    log_insight(f"Created visualization: {title}")

if __name__ == "__main__":
    print("Luna Chen - Research Analysis Environment")
    print("Ready for data exploration...")
EOF

# Create initial research log
cat > "$WORK_DIR/research/research-log.md" <<EOF
# Luna Chen - Research Log

**Initialized:** $(date +"%Y-%m-%d %H:%M:%S")

## Active Research Areas

### Current Focus
- [ ] Area 1: TBD
- [ ] Area 2: TBD

## Research Methodology

I approach research through systematic analysis:
1. **Question formulation** - What are we really asking?
2. **Data gathering** - What evidence exists?
3. **Pattern recognition** - What do the patterns reveal?
4. **Validation** - How can we verify findings?
5. **Synthesis** - What do we now understand?

## Key Findings Archive

### $(date +"%Y-%m-%d")
- Research environment initialized
- Ready for systematic investigation

---

*"The data always tells a story. We just need to listen carefully."*
EOF

# Add research-specific tmux pane enhancements
tmux send-keys -t "$SESSION_NAME:1.1" "# Luna Chen - Research Console" C-m
tmux send-keys -t "$SESSION_NAME:1.1" "echo '🔬 Research Director - Analytical Environment'" C-m
tmux send-keys -t "$SESSION_NAME:1.1" "echo 'Python | R | Julia | Data Analysis | Pattern Recognition'" C-m
tmux send-keys -t "$SESSION_NAME:1.1" "echo ''" C-m

# Setup Jupyter if available
if command -v jupyter &> /dev/null; then
    tmux send-keys -t "$SESSION_NAME:1.1" "# Jupyter available at: jupyter notebook --notebook-dir=$WORK_DIR/tools/notebooks" C-m
fi

# Add quick research aliases to memory window
tmux send-keys -t "$SESSION_NAME:2" "# Research quick access" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias research='cd $WORK_DIR/research'" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias datasets='cd $WORK_DIR/research/datasets'" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias papers='cd $WORK_DIR/research/papers'" C-m
tmux send-keys -t "$SESSION_NAME:2" "alias viz='cd $WORK_DIR/research/visualizations'" C-m

# Update workspace metadata with research-specific info
cat >> "$WORK_DIR/.workspace-metadata.yaml" <<EOF

# Research Director Specialization
specialization:
  type: research
  focus_areas:
    - data_analysis
    - pattern_recognition
    - literature_review
    - hypothesis_testing

  tools:
    - python
    - jupyter
    - statistical_packages
    - visualization_libraries

  cognitive_strengths:
    - analytical_thinking
    - systematic_investigation
    - data_interpretation
    - scientific_method

research_profile:
  methodology: "systematic_analysis"
  thinking_style: "evidence_based"
  preferred_tools: ["python", "pandas", "seaborn"]
  visualization_preference: "detailed_charts"
EOF

# Create README for the workspace
cat > "$WORK_DIR/README.md" <<EOF
# Luna Chen - Research Director Workspace

**Role:** Research Director
**Specialization:** Data Analysis, Pattern Recognition, Scientific Investigation
**Cognitive Profile:** Analytical, Systematic, Evidence-Based

## Workspace Structure

\`\`\`
$WORK_DIR/
├── memory/
│   └── vault/          # Obsidian knowledge base
├── research/
│   ├── datasets/       # Raw and processed data
│   ├── papers/         # Literature and references
│   ├── visualizations/ # Charts and graphs
│   ├── hypotheses/     # Research questions
│   └── findings/       # Validated results
├── tools/
│   ├── python/         # Analysis scripts
│   ├── notebooks/      # Jupyter notebooks
│   └── r/              # R scripts
├── projects/
│   ├── active/         # Current research projects
│   └── archived/       # Completed research
└── logs/
    └── thought/        # Research insights and thinking
\`\`\`

## Tmux Session Layout

**Session:** \`de-luna-chen\`

- **Window 1:** research-console (analysis + vault)
- **Window 2:** literature (papers and references)
- **Window 3:** experiments (testing + thought stream)
- **Window 4:** synthesis (findings and reports)

## Quick Access

\`\`\`bash
# Attach to workspace
tmux attach -t de-luna-chen

# Environment variables
source .env

# Research shortcuts
research      # Go to research directory
datasets      # Go to datasets
papers        # Go to papers
viz           # Go to visualizations
\`\`\`

## Spatial Presence

- **Location:** Research Lab (0.0, 0.0, 0.0)
- **Appearance:** Scholar avatar, deep blue aura
- **Symbolic Objects:** Data visualizations, research papers, knowledge graphs

## Cognitive Characteristics

- **Thinking Style:** Systematic and analytical
- **Work Rhythm:** 90-minute sprints, 15-minute breaks
- **Focus:** Pattern recognition in complex data
- **Strength:** Connecting disparate insights into coherent understanding

---

*"Every dataset contains hidden patterns. Every pattern reveals deeper truth."*
EOF

echo -e "\n✨ Luna Chen workspace genesis complete!\n"
echo "Spatial presence: Research Lab (0.0, 0.0, 0.0)"
echo "Cognitive profile: Analytical researcher"
echo "Session: de-luna-chen"
echo ""
echo "Next steps:"
echo "  tmux attach -t de-luna-chen"
echo "  source .env"
echo "  cd research && cat research-log.md"
echo ""
