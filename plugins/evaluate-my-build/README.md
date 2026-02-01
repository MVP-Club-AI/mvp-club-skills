# Evaluate My Build

A plugin for systematic evaluation of what you've built against your original goals.

## Skills

| Skill | Command | Description |
|-------|---------|-------------|
| **evaluate** | `evaluate-my-build:evaluate` | Evaluate your build against original goals |

## Why This Exists

Evaluation is the most commonly skipped phase. We get excited about building, then move on to the next thing without reflecting on what worked.

## Usage

After building something, invoke the evaluation:
```
evaluate-my-build:evaluate
```

Or use natural language:
- "Evaluate this"
- "Review my build"
- "How did I do?"
- "What's missing?"

Works best when you have a PRD or clear goals to compare against.

## Part of the Work Loop

This plugin supports the **Evaluate** phase:
Articulate → Build → Prompt → Execute → **Evaluate** → Iterate

## Installation

```
/plugin marketplace add mvp-club/mvp-club-skills
/plugin install evaluate-my-build@mvp-club-skills
```
