<div align="center">
  
# 🧭 AI Architecture Explorer

**Master the configuration, memory, and rule architectures of the world's leading AI coding assistants.**

[![EXPLORE](https://img.shields.io/badge/EXPLORE-NOW-000000?style=for-the-badge&logo=github&logoColor=white)](https://vinipx.github.io/ai-architecture-explorer/)
[![Vue.js](https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vue.js&logoColor=4FC08D)](https://vuejs.org/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)](https://tailwindcss.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

[EXPLORE IT NOW!](https://vinipx.github.io/ai-architecture-explorer)

*A visual, interactive IDE-like interface to explore global and project-level `.dotfiles` across major AI ecosystems.*

</div>

---

## 💡 Why This Exists

Modern AI coding assistants (like Cursor, Claude Code, and Copilot) have evolved far beyond a simple chat box. They now orchestrate complex hierarchies of memory levels, scoped rules, and autonomous tools. 

**When you structure these configurations correctly, you dramatically improve the output quality, context awareness, and speed of your AI agents.**

This repository provides an interactive explorer that lets you click through the official directory architectures of leading AI tools. It explains **what** each file does, **why** it exists, and provides **Real-World Templates** following prompt engineering best practices (ruthless pruning, Markdown headings, and emphasis words).

---

## 🚀 Providers Covered

### 🤖 Claude Code (`.claude/`)
Master Anthropic's real Claude Code file architecture:
- **Global:** `~/.claude/CLAUDE.md` — Your personal developer persona (always included in system prompt).
- **Auto-Memory:** `~/.claude/projects/<path-encoded>/memory/` — Persistent memory written by Claude itself across sessions.
- **Project:** `CLAUDE.md` — The strategic, version-controlled project context (concatenated with global).
- **Subdirectory:** `frontend/CLAUDE.md`, `backend/CLAUDE.md` — Lazy-loaded when working in those directories.
- **Commands:** `.claude/commands/*.md` — Custom `/slash-commands` for reusable project workflows.
- **Hooks:** `.claude/hooks/*.sh` + `settings.json` — Lifecycle scripts for PreToolUse, PostToolUse, Stop events.
- **Settings:** `.claude/settings.json` — Tool permissions, environment variables, hook bindings.

### 💻 Cursor IDE (`.cursor/`)
Visualize the modern **MDC (Markdown Cursor)** architecture:
- Ditch the legacy `.cursorrules` monolith for the highly modular `.cursor/rules/*.mdc` system.
- Understand how to leverage YAML frontmatter (`alwaysApply` vs intelligent `globs`).
- Explore real-world examples of `000-project-context.mdc`, frontend UI patterns, and isolated testing guidelines.

### ✨ Gemini CLI (`.gemini/`)
Explore Google's robust context management and agent orchestration:
- Learn how to safely structure `GEMINI.md` alongside `.geminiignore` to optimize token usage.
- Configure `settings.json` and persist long-term agent memory.
- Set up autonomous skills, shell execution hooks, and orchestrator sub-agents.

### 🐙 GitHub Copilot (`.github/`)
Configure the native `.github/` folder to steer Copilot Chat and Workspace Agents:
- Set up repository-wide instructions via `.github/copilot-instructions.md`.
- See how to use path-scoped `applyTo` YAML files for specific directories to prevent context bloat.
- Define strict autonomous operational limits using `AGENTS.md`.

### ⚡ Aider CLI (`.aider/`)
Master the terminal-native pair programmer's configuration:
- Setup `.aider.conf.yml` for environment styling, testing commands, and model selection.
- Manage memory cache, repository maps, and auto-generated chat history (`.aider.chat.history.md`).
- Define strict coding standards using `/read .aider.conventions.md`.

---

## 🛠️ Built With

This entire explorer is built as a highly optimized, zero-build-step application:
- **Single File Architecture:** The entire app logic, UI, and state are bundled in `index.html`.
- **Vue 3 (CDN):** Reactive file-tree navigation and state management.
- **Tailwind CSS (CDN):** Beautiful, modern dark/light mode UI.
- **Lucide Icons:** Crisp, consistent iconography representing AI ecosystems.

---

## 💻 Local Development

Because the project has zero build steps, local development is incredibly simple.

1. Clone the repository:
   ```bash
   git clone https://github.com/vinipx/ai-architecture-explorer.git
   cd ai-architecture-explorer
   ```
2. Run the included convenience script to spin up a local server. It will automatically detect Python or Node.js and open the browser for you:
   ```bash
   ./docs.sh
   ```

---

## 🤝 Contributing

Found a new AI assistant with a complex rule architecture? Want to improve the existing templates? Contributions are highly welcome! 

1. Fork the Project.
2. Edit the `providersData` JSON arrays directly inside `index.html`.
3. Open a Pull Request.

---
<div align="center">
  <i>If this repository helped you level up your AI coding workflows, consider giving it a ⭐!</i>
</div>
