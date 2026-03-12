# Claude Architecture Explorer

An interactive, visual reference guide for the official `.claude/` directory architecture, built to help you master Claude Code's multi-level configuration system.

**[View the Live Explorer Here](https://vinipx.github.io/claude-infra-setup/)** *(Assuming GitHub Pages is configured at this URL)*

## Overview
Claude Code orchestrates a powerful hierarchy of four memory levels, each with a specific scope and priority. When two levels contradict each other, Claude Code applies the most specific rule. 

This repository provides a visual, interactive IDE-like interface (built in a single HTML file with Vue and Tailwind CSS) that allows you to click through both the global user-level and project-level directories. It explains what each file does, why it exists, and provides **Real World** templates following Anthropic's prompt engineering best practices (ruthless pruning, Markdown headings, and emphasis words).

---

## The 4 Levels of Claude Configuration

### Level 1: Global (Your Machine)
**`~/.claude/CLAUDE.md`**
Global preferences across ALL your projects. This is specific to your machine and not versioned. Configure your personal preferences here: communication style, preferred tools, and OS specifics.

### Level 2: Auto-Memory
**`~/.claude/projects/*/MEMORY.md`**
Written by Claude itself! Unlike `CLAUDE.md` which you write manually, `MEMORY.md` is fed by the agent over the course of your sessions. It tracks discovered build commands, debugging insights, and active project context.

### Level 3: Project
**`your-project/CLAUDE.md`**
The most strategic file. It lives at the root of your Git repository and is shared with the entire team via version control. Keep it ruthlessly pruned (80-200 lines max) and place core code conventions, project architecture, and primary build commands here.
*Note: You can use `CLAUDE.local.md` (Level 3b) for gitignored personal overrides.*

### Level 4: Modular Rules
**`your-project/.claude/rules/*.md`**
The highest priority files. Placed in `.claude/rules/`, these are automatically loaded alongside `CLAUDE.md`. This allows separation of concerns: one file for coding style, one for testing directives, one for Git workflows. When levels conflict, these specific rules win.

---

## Other Key Features Demonstrated

*   **Subdirectory Context (`frontend/CLAUDE.md`):** Subdirectory rules only load when Claude interacts with files in those specific folders. This prevents irrelevant backend context from bloating your frontend session.
*   **On-Demand Knowledge (`docs/architecture.md`):** Store deep knowledge in the `docs/` folder. Instead of loading them every session, reference them on-demand by telling Claude to look at `@docs/architecture.md`.
*   **Custom Skills (`.claude/skills/`):** Define modular custom tools (like safe DB migration wrappers) using a `SKILL.md` file with YAML frontmatter.

---

## Local Development

If you want to view or modify the interactive explorer locally:

1. Clone the repository.
2. Run the included convenience script to spin up a local server:
   ```bash
   ./docs.sh
   ```
3. Your browser will automatically open `http://localhost:8080/`.

---

## Acknowledgments
A special thank you to **Navdeep Singh Rathore** ([LinkedIn](https://www.linkedin.com/in/thenavdeeprathore/)), whose insights and original architectural breakdown inspired the creation of this interactive reference site.