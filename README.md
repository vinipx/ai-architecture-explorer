# AI Architecture Explorer

An interactive, visual reference guide for the official directory architectures of leading AI coding agents (Claude Code, Gemini CLI, Cursor IDE, and GitHub Copilot). Built to help you master multi-level configuration systems, MDC (Markdown Configuration) files, and autonomous agent rules.

**[View the Live Explorer Here](https://vinipx.github.io/ai-architecture-explorer/)** *(Assuming GitHub Pages is configured at this URL)*

## Overview
Modern AI coding assistants orchestrate powerful hierarchies of memory levels, rules, and scoped instructions. When you structure these configurations correctly, you can dramatically improve the output quality of your AI agents. 

This repository provides a visual, interactive IDE-like interface (built in a single HTML file with Vue and Tailwind CSS) that allows you to click through both the global user-level and project-level directories for **four major AI tools**. It explains what each file does, why it exists, and provides **Real World** templates following prompt engineering best practices.

---

## Supported AI Providers

### 🤖 Claude Code
Master Anthropic's 4-level memory configuration hierarchy (`.claude/`):
- **Global:** `~/.claude/CLAUDE.md`
- **Auto-Memory:** `projects/*/MEMORY.md`
- **Project:** `CLAUDE.md`
- **Modular Rules:** `.claude/rules/*.md`

### ✨ Gemini CLI
Explore Google's robust context management (`.gemini/`):
- Learn how to structure `GEMINI.md` alongside `.geminiignore`.
- Configure `settings.json` and agent memory.
- Set up autonomous skills, bash execution hooks, and orchestrator sub-agents.

### 💻 Cursor IDE
Visualize the modern **MDC (Markdown Cursor)** architecture:
- Ditch legacy `.cursorrules` for the highly modular `.cursor/rules/*.mdc` system.
- Understand YAML frontmatter (`alwaysApply` vs intelligent `globs`).
- See examples of `000-project-context.mdc`, frontend patterns, and testing guidelines.

### 🐙 GitHub Copilot
Configure the native `.github/` folder to steer Copilot Chat and Workspace Agents:
- Set up repository-wide instructions via `.github/copilot-instructions.md`.
- See how to use path-scoped `applyTo` YAML files for specific directories.
- Define autonomous operational limits using `AGENTS.md`.

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
A special thank you to **Navdeep Singh Rathore** ([LinkedIn](https://www.linkedin.com/in/thenavdeeprathore/)), whose insights and original architectural breakdown inspired the creation of the interactive Claude reference, which has now evolved into this comprehensive multi-agent guide.