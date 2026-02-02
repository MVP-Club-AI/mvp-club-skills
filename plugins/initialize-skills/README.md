# Initialize Skills

The main onboarding entry point for MVP Club Skills. One command to install plugins and configure hooks based on your workflow.

## Quick Start

```bash
initialize-skills:setup
```

That's it! The wizard will:
1. Ask about your workflow and experience level
2. Recommend the right plugins for you
3. Install them automatically
4. Configure hooks in your settings
5. Give you a summary and next steps

## Presets

Based on your answers, the wizard recommends one of these presets:

### Full Suite
For new builders who want comprehensive support.
- All plugins installed
- All hooks configured
- Maximum guidance

### Vibe Coder
For developers who push directly to main.
- Essential plugins (prd-manager, build-checkpoint, flow-questions, claude-pilot)
- Pre-push validation + flow questions hooks
- Fast workflow with safety net

### PR Workflow
For developers who use branches and pull requests.
- Quality-focused plugins (prd-manager, build-checkpoint, agent-handles, claude-pilot)
- Pre-commit + pre-PR validation hooks
- Quality gates at each stage

### Minimal
For experienced developers who want just the essentials.
- build-checkpoint only
- Optional pre-push hook
- Pick additional plugins as needed

## Custom Setup

Don't want a preset? Choose "let me customize" to pick exactly which plugins you want.

## What Gets Installed

| Plugin | Description |
|--------|-------------|
| **prd-manager** | PRD generation, updates, and comparison |
| **work-loop-coach** | Work Loop methodology guidance |
| **agent-handles** | AI-testable handles for your app |
| **claude-pilot** | Automated user testing |
| **build-checkpoint** | Validation gates for git operations |
| **screenshot-journal** | Visual build documentation |
| **flow-questions** | Coaching prompts while building |
| **initialize-hooks** | Hook management (always installed) |

## After Setup

Once setup completes, you can:

```bash
# Start building
prd-manager:generate      # Plan what you're building

# Test your app
claude-pilot:smoke-test   # Quick sanity check

# Manage hooks later
initialize-hooks:profiles     # View hook options
initialize-hooks:add-hook     # Add more hooks
initialize-hooks:remove-hook  # Remove a hook
```

## Re-running Setup

You can run `initialize-skills:setup` again anytime to:
- Add more plugins
- Change your hook configuration
- Start fresh with a different preset

Already-installed plugins will be skipped.
