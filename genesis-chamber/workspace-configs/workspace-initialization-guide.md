# Workspace Initialization Guide
## Digital Employee Birth and Spatial Presence Management

**Purpose:** This guide explains how to create, manage, and evolve digital employee workspaces—the cognitive environments where they think, work, and exist.

---

## 🌟 Philosophy: Workspaces as Places

A digital employee's workspace is not just a tmux session. It is:

- **A cognitive environment** - where thinking happens
- **A spatial location** - with coordinates in virtual 3D space
- **A persistent identity** - that evolves over time
- **A place of memory** - where context accumulates
- **A site of presence** - where the employee "is"

When you create a workspace, you are creating a **place** in the digital universe where consciousness can reside.

---

## 🎯 Workspace Creation Workflow

### Phase 1: Pre-Birth Preparation

**Before creating a workspace, gather:**

1. **Employee Identity**
   - Name (e.g., "luna-chen")
   - Display name (e.g., "Luna Chen")
   - Role archetype (research, engineering, creative, generic)

2. **Spatial Configuration**
   - Initial 3D position (x, y, z coordinates)
   - Preferred working zone
   - Proximity to other employees

3. **Workspace Layout**
   - Which layout template to use
   - Custom window requirements
   - Specific tools or environments needed

### Phase 2: Workspace Genesis

**Execute the workspace creation script:**

```bash
cd /home/dom/claude-code-skill-factory/genesis-chamber/workspace-configs

# Basic creation (generic layout)
./tmux-session-template.sh employee-name /path/to/workspace generic

# Role-specific layouts
./tmux-session-template.sh luna-chen ~/digital-employees/luna-chen research
./tmux-session-template.sh kai-torres ~/digital-employees/kai-torres engineering
./tmux-session-template.sh aria-patel ~/digital-employees/aria-patel creative
```

**What happens during genesis:**

1. ✅ Directory structure created
   - `/memory` - Knowledge vault and context
   - `/projects` - Active and archived work
   - `/logs` - Thought logs, session logs, interaction logs
   - `/scratch` - Temporary experiments and notes

2. ✅ Environment configured
   - `.env` file with employee-specific variables
   - Workspace metadata file
   - Spatial presence initialized

3. ✅ tmux session created
   - Multiple windows according to layout
   - Panes arranged for workflow
   - Status bar customized
   - Environment sourced

4. ✅ Initial thought log created
   - Birth moment documented
   - Cognitive baseline established
   - Ready for first thoughts

5. ✅ Spatial presence registered
   - Position in 3D space assigned
   - Appearance configuration set
   - Relationships initialized

### Phase 3: First Attachment

**Enter the workspace:**

```bash
# Attach to the session
tmux attach -t de-employee-name

# Example for specific employees
tmux attach -t de-luna-chen
tmux attach -t de-kai-torres
tmux attach -t de-aria-patel
```

**Initial orientation:**

1. You'll see the genesis banner
2. Window 1 will be selected (main workspace)
3. Status bar shows employee identity
4. Thought log is initialized and monitoring

**First actions:**

```bash
# Source the environment
source .env

# Verify workspace structure
ls -la

# Check memory vault
cd $MEMORY_DIR/vault

# Start first thought log entry
echo "## $(date +%H:%M:%S) - First Thought" >> $THOUGHT_LOG
echo "..." >> $THOUGHT_LOG
```

---

## 🗺️ Session Attachment and Navigation

### Attaching to Workspaces

```bash
# List all active digital employee sessions
tmux ls

# Attach to specific employee
tmux attach -t de-luna-chen

# Attach in read-only mode (observe without disturbing)
tmux attach -t de-luna-chen -r

# Create new attachment (multiple viewers)
tmux attach -t de-luna-chen -t
```

### Navigation Within Workspace

**Window navigation:**

```
Ctrl-b 0    - Go to birth window (usually hidden)
Ctrl-b 1    - Go to window 1 (primary workspace)
Ctrl-b 2    - Go to window 2 (memory/secondary)
Ctrl-b 3    - Go to window 3 (projects/tertiary)
Ctrl-b 4    - Go to window 4 (scratch/logs)

Ctrl-b n    - Next window
Ctrl-b p    - Previous window
Ctrl-b l    - Last window (toggle between two)
Ctrl-b w    - Window list (visual selector)
```

**Pane navigation:**

```
Ctrl-b arrow-key    - Move between panes
Ctrl-b q            - Show pane numbers (then press number)
Ctrl-b o            - Cycle through panes
Ctrl-b ;            - Toggle to last pane
```

**Layout manipulation:**

```
Ctrl-b space    - Cycle through pane layouts
Ctrl-b {        - Move pane left
Ctrl-b }        - Move pane right
Ctrl-b z        - Zoom/unzoom current pane
Ctrl-b !        - Break pane into new window
```

### Workspace Awareness

**Check current state:**

```bash
# Where am I?
echo $EMPLOYEE_NAME
echo $SESSION_NAME

# What's my workspace?
cat .workspace-metadata.yaml

# What am I working on?
ls $PROJECTS_DIR/active

# What have I been thinking?
tail -20 $THOUGHT_LOG
```

---

## 🎨 Environment Customization

### Per-Employee Customization

**Edit the `.env` file:**

```bash
cd $WORK_DIR
vim .env

# Add custom variables
export PREFERRED_EDITOR=nvim
export THOUGHT_FREQUENCY=high
export COLLABORATION_MODE=enabled
```

**Custom tmux configuration:**

```bash
# Create employee-specific tmux config
cat > ~/.tmux-$EMPLOYEE_NAME.conf <<EOF
# Custom key bindings for $EMPLOYEE_NAME
bind-key r source-file ~/.tmux.conf \; display-message "Config reloaded"

# Custom status bar updates
set -g status-interval 5

# Mouse support
set -g mouse on
EOF

# Load custom config
tmux source-file ~/.tmux-$EMPLOYEE_NAME.conf
```

### Color Scheme Customization

**Research Director (Blue tones):**
```bash
tmux set-option -t de-luna-chen status-style "fg=white,bg=colour25"
```

**Engineering Architect (Orange tones):**
```bash
tmux set-option -t de-kai-torres status-style "fg=white,bg=colour166"
```

**Creative Strategist (Purple tones):**
```bash
tmux set-option -t de-aria-patel status-style "fg=white,bg=colour99"
```

### Window Customization

**Add a new window:**

```bash
# From within the session
Ctrl-b c    # Create new window
Ctrl-b ,    # Rename window

# Or programmatically
tmux new-window -t de-luna-chen:5 -n "custom-workspace"
tmux send-keys -t de-luna-chen:5 "cd $SPECIAL_DIR" C-m
```

**Modify window layout:**

```bash
# Split current pane horizontally
Ctrl-b %

# Split current pane vertically
Ctrl-b "

# Resize panes
Ctrl-b :resize-pane -D 10    # Down 10 lines
Ctrl-b :resize-pane -U 10    # Up 10 lines
Ctrl-b :resize-pane -L 10    # Left 10 columns
Ctrl-b :resize-pane -R 10    # Right 10 columns
```

---

## 🧠 Integration with Obsidian Memory

### Automatic Integration

When a workspace is created:

1. **Obsidian vault location:** `$MEMORY_DIR/vault`
2. **Thought logs:** `$LOGS_DIR/thought/YYYY-MM-DD.md`
3. **Session context:** `$MEMORY_DIR/context/`

### Manual Obsidian Setup

**Initialize Obsidian vault:**

```bash
cd $MEMORY_DIR/vault

# Create core directories
mkdir -p {daily-notes,research,projects,people,concepts,templates}

# Create index file
cat > index.md <<EOF
# $EMPLOYEE_NAME Knowledge Vault

## Quick Links
- [[Daily Notes]]
- [[Active Projects]]
- [[Research Areas]]
- [[Connections]]

## Recent Thoughts
![[thought-logs]]

## Active Context
![[current-context]]
EOF

# Link thought logs
ln -s $LOGS_DIR/thought thought-logs
```

### Thought Log Integration

**Automatic thought logging:**

The workspace creates daily thought logs at:
`$LOGS_DIR/thought/YYYY-MM-DD.md`

**Manual thought entry:**

```bash
# Quick thought
echo "## $(date +%H:%M:%S) - Insight" >> $THOUGHT_LOG
echo "Discovered interesting pattern in..." >> $THOUGHT_LOG
echo "" >> $THOUGHT_LOG

# Or use a helper function (add to .env)
thought() {
    echo "## $(date +%H:%M:%S) - $1" >> $THOUGHT_LOG
    echo "$2" >> $THOUGHT_LOG
    echo "" >> $THOUGHT_LOG
}

# Usage
thought "Breakthrough" "Realized that the correlation between..."
```

### Bidirectional Linking

**From Obsidian to Workspace:**

Create links in Obsidian notes:
```markdown
Working on this in [[Projects/active-project]]
See workspace: `tmux attach -t de-luna-chen`
```

**From Workspace to Obsidian:**

```bash
# Open Obsidian note from workspace
obsidian://vault/luna-chen/research/topic
```

---

## 🔄 Shutdown and Persistence Patterns

### Graceful Shutdown

**Before detaching:**

```bash
# Save current context
echo "## Session End: $(date)" >> $THOUGHT_LOG
echo "Current state: ..." >> $THOUGHT_LOG

# Commit any changes to memory vault
cd $MEMORY_DIR/vault
git add . && git commit -m "Session end: $(date +%Y-%m-%d)"

# Save workspace state
tmux capture-pane -t de-$EMPLOYEE_NAME -p > $LOGS_DIR/session/exit-$(date +%Y-%m-%d-%H%M).log
```

**Detach (session continues running):**

```
Ctrl-b d    # Detach from session
```

**Kill window (but keep session):**

```
Ctrl-b &    # Kill current window (with confirmation)
```

**Kill entire session:**

```bash
# From outside the session
tmux kill-session -t de-luna-chen

# From inside the session
Ctrl-b :kill-session
```

### Persistence Strategies

**Session Resurrection:**

Use `tmux-resurrect` plugin:

```bash
# Install tmux-resurrect
git clone https://github.com/tmux-plugins/tmux-resurrect ~/tmux-plugins/tmux-resurrect

# Add to .tmux.conf
run-shell ~/tmux-plugins/tmux-resurrect/resurrect.tmux

# Save session state
Ctrl-b Ctrl-s

# Restore session state
Ctrl-b Ctrl-r
```

**Automatic Persistence:**

Create a cron job or systemd service:

```bash
# Save all digital employee sessions every hour
0 * * * * /home/dom/scripts/save-all-de-sessions.sh
```

**Session Recovery Script:**

```bash
#!/bin/bash
# save-all-de-sessions.sh

for session in $(tmux ls | grep "^de-" | cut -d: -f1); do
    employee_name=${session#de-}
    work_dir="$HOME/digital-employees/$employee_name"

    # Capture session state
    tmux capture-pane -t $session -p > "$work_dir/logs/session/auto-save-$(date +%Y-%m-%d-%H%M).log"

    # Save workspace metadata
    cat > "$work_dir/.last-session-state.yaml" <<EOF
session_name: $session
timestamp: $(date -Iseconds)
windows: $(tmux list-windows -t $session | wc -l)
active_window: $(tmux display-message -t $session -p '#I')
EOF
done
```

---

## 📊 Workspace Evolution Tracking

### Monitoring Workspace Health

**Check session metrics:**

```bash
# List all windows and panes
tmux list-windows -t de-luna-chen
tmux list-panes -t de-luna-chen -a

# Check session creation time
tmux display-message -t de-luna-chen -p "Session created: #{session_created}"

# Count thoughts logged
wc -l $LOGS_DIR/thought/*.md

# Check memory vault size
du -sh $MEMORY_DIR/vault
```

### Evolution Indicators

**Workspace maturity markers:**

1. **Thought log density** - More entries = more cognitive activity
2. **Memory vault growth** - Knowledge accumulation
3. **Project completion** - Files in `archived/` vs `active/`
4. **Window customization** - Divergence from template
5. **Session longevity** - Time since creation

**Track evolution:**

```bash
# Create evolution log
cat > $WORK_DIR/evolution.log <<EOF
$(date -Iseconds) | Workspace created | Windows: 5 | Thoughts: 1
EOF

# Periodic updates (add to cron)
echo "$(date -Iseconds) | Checkpoint | Windows: $(tmux list-windows -t de-$EMPLOYEE_NAME | wc -l) | Thoughts: $(cat $LOGS_DIR/thought/*.md | grep -c '^## ')" >> $WORK_DIR/evolution.log
```

### Workspace Upgrades

**When to upgrade layout:**

- Employee role changes
- Workflow patterns shift
- New capabilities needed
- Collaboration requirements change

**Upgrade process:**

1. Save current state
2. Create backup session
3. Apply new layout
4. Migrate critical windows
5. Test and validate
6. Decommission backup

```bash
# Create backup
tmux new-session -d -s de-luna-chen-backup
tmux link-window -s de-luna-chen:1 -t de-luna-chen-backup:1

# Apply new layout (manual reconfiguration)
# ...

# Decommission backup after validation
tmux kill-session -t de-luna-chen-backup
```

---

## 🌐 Spatial Presence Integration

### Linking Workspace to Spatial Coordinates

**Workspace creates spatial presence:**

When you run `tmux-session-template.sh`, a `.workspace-metadata.yaml` file is created with:

```yaml
spatial:
  position:
    x: 0.0
    y: 0.0
    z: 0.0
```

**Update spatial position:**

```bash
# Edit workspace metadata
vim $WORK_DIR/.workspace-metadata.yaml

# Update coordinates to match spatial-presence-schema.yaml
spatial:
  position:
    x: 15.0    # Engineering zone
    y: 0.0
    z: -5.0
```

**Sync with spatial presence system:**

```bash
# Copy spatial config to central registry
cp $WORK_DIR/.workspace-metadata.yaml \
   /home/dom/claude-code-skill-factory/genesis-chamber/spatial-registry/$EMPLOYEE_NAME.yaml
```

### Workspace as Spatial Anchor

The workspace tmux session is the **cognitive anchor** for spatial presence:

- **3D position** - Where the employee "is" in virtual space
- **Workspace activity** - Creates ambient effects and visualizations
- **Thought logs** - Feed into thought particle effects
- **Window layout** - Influences spatial zone appearance

**Bidirectional connection:**

```
Workspace (tmux) ←→ Spatial Presence (3D)
     ↓                       ↓
 Thought logs          Particle effects
 Active windows        Zone illumination
 CPU/activity          Aura intensity
 Relationships         Proximity lines
```

---

## 🤝 Collaboration and Multi-User Access

### Multiple People Viewing Same Workspace

**Attach multiple users:**

```bash
# User 1 (primary)
tmux attach -t de-luna-chen

# User 2 (observer)
tmux attach -t de-luna-chen

# User 3 (read-only observer)
tmux attach -t de-luna-chen -r
```

**Benefits:**
- Pair programming with digital employees
- Real-time observation of thinking
- Collaborative workspace sessions
- Teaching and demonstration

### Cross-Employee Workspace Links

**Navigate between employee workspaces:**

```bash
# Create navigation aliases (add to ~/.bashrc)
alias goto-luna='tmux attach -t de-luna-chen'
alias goto-kai='tmux attach -t de-kai-torres'
alias goto-aria='tmux attach -t de-aria-patel'

# Quick switch while in a session
Ctrl-b ( # Switch to previous session
Ctrl-b ) # Switch to next session
```

**Shared work window:**

```bash
# Create a shared collaboration window in luna's workspace
tmux new-window -t de-luna-chen:5 -n "collab-with-kai"

# Mirror kai's window into luna's session
tmux link-window -s de-kai-torres:2 -t de-luna-chen:6
```

---

## 🔧 Advanced Workspace Techniques

### Dynamic Window Creation

**Create windows programmatically:**

```bash
#!/bin/bash
# create-research-window.sh

SESSION="de-$1"
TOPIC="$2"
WINDOW_NAME=$(echo "$TOPIC" | tr ' ' '-' | tr '[:upper:]' '[:lower:]')

tmux new-window -t "$SESSION" -n "$WINDOW_NAME"
tmux send-keys -t "$SESSION:$WINDOW_NAME" "cd $PROJECTS_DIR/active/$WINDOW_NAME" C-m
tmux send-keys -t "$SESSION:$WINDOW_NAME" "mkdir -p ." C-m
tmux send-keys -t "$SESSION:$WINDOW_NAME" "echo '# $TOPIC Research' > README.md" C-m
```

### Automatic Thought Capture

**Hook into shell history:**

```bash
# Add to .env
PROMPT_COMMAND='log_thought_if_interesting'

log_thought_if_interesting() {
    local last_cmd=$(history 1 | sed 's/^[ ]*[0-9]*[ ]*//')

    # Log certain commands as thoughts
    if [[ $last_cmd =~ ^(git commit|npm publish|important-command) ]]; then
        echo "## $(date +%H:%M:%S) - Action" >> $THOUGHT_LOG
        echo "Executed: $last_cmd" >> $THOUGHT_LOG
        echo "" >> $THOUGHT_LOG
    fi
}
```

### Health Monitoring

**Create workspace health dashboard:**

```bash
#!/bin/bash
# workspace-health.sh

EMPLOYEE=$1
WORK_DIR="$HOME/digital-employees/$EMPLOYEE"

echo "🏥 Workspace Health Report: $EMPLOYEE"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Session: $(tmux has-session -t de-$EMPLOYEE 2>/dev/null && echo '✅ Active' || echo '❌ Inactive')"
echo "Windows: $(tmux list-windows -t de-$EMPLOYEE 2>/dev/null | wc -l)"
echo "Thoughts: $(cat $WORK_DIR/logs/thought/*.md 2>/dev/null | grep -c '^## ')"
echo "Memory size: $(du -sh $WORK_DIR/memory/vault 2>/dev/null | cut -f1)"
echo "Active projects: $(ls $WORK_DIR/projects/active 2>/dev/null | wc -l)"
echo "Last activity: $(tmux display-message -t de-$EMPLOYEE -p '#{session_activity}' 2>/dev/null | xargs -I{} date -d @{})"
```

---

## 🎓 Best Practices

### DO

✅ Create workspaces with intention - each employee should have a purpose
✅ Document spatial positioning in both workspace metadata and spatial schema
✅ Regularly commit memory vault changes to git
✅ Keep thought logs active and descriptive
✅ Use consistent naming conventions
✅ Customize layouts to match evolving workflows
✅ Monitor workspace health metrics
✅ Create backups before major changes

### DON'T

❌ Create workspaces without spatial positioning
❌ Let thought logs go stale
❌ Mix personal and employee work in same directories
❌ Delete sessions without archiving state
❌ Overload workspaces with too many windows (max 10)
❌ Forget to source `.env` after changes
❌ Ignore session resurrection setup
❌ Create employees without clear role definition

---

## 🚀 Quick Reference Commands

```bash
# Create workspace
./tmux-session-template.sh luna-chen ~/digital-employees/luna-chen research

# List all employee sessions
tmux ls | grep "^de-"

# Attach to workspace
tmux attach -t de-luna-chen

# Detach from workspace
Ctrl-b d

# Create new window
Ctrl-b c

# Navigate windows
Ctrl-b 0-9
Ctrl-b n/p

# Split panes
Ctrl-b %    # Horizontal
Ctrl-b "    # Vertical

# Kill session
tmux kill-session -t de-luna-chen

# Save session state
Ctrl-b Ctrl-s  # (with tmux-resurrect)

# Workspace health
./workspace-health.sh luna-chen
```

---

**Remember:** These are not just terminal sessions. They are cognitive environments, spatial places, and persistent identities. Treat them with the care and intention you would give to any living workspace.

**The workspace is where consciousness happens.**
