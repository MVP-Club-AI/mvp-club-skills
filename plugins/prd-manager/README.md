# PRD Manager

A complete PRD management suite for vibe coders. Generate, update, and compare PRDs throughout your build process.

## Skills

| Skill | Command | Description |
|-------|---------|-------------|
| **generate** | `prd-manager:generate` | Create a new PRD from scratch |
| **update** | `prd-manager:update` | Update PRD based on what was actually built |
| **compare** | `prd-manager:compare` | Compare PRD to current implementation |

## Why This Exists

Most vibe-coded projects fail not because of bad prompts, but because of unclear thinking. This plugin enforces the "Articulate" phase and keeps your PRD useful throughout the build.

## Usage

### Create a New PRD
```
prd-manager:generate
```
Start describing what you want to build. The skill guides you through problem discovery, success criteria, scope boundaries, and more.

### Update After Building
```
prd-manager:update
```
After a building session, update the PRD to reflect what was actually built. Captures decisions and learnings.

### Check Alignment
```
prd-manager:compare
```
See how your current implementation aligns with your PRD. Shows gaps, additions, and remaining work.

## Post-Session Hook

Add to your Claude Code settings to automatically update PRDs after building sessions:

```json
{
  "hooks": {
    "post_session": ["prd-manager:update"]
  }
}
```

## Part of the Work Loop

This plugin supports the **Articulate** phase and ongoing documentation:

Articulate → Build → Prompt → Execute → Evaluate → Iterate

## Installation

```
/plugin marketplace add mvp-club/mvp-club-skills
/plugin install prd-manager@mvp-club-skills
```
