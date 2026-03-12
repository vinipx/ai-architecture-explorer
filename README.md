# claude-infra-setup

This repository demonstrates the comprehensive architectural structure of the official `.claude/` setup as analyzed from the reference diagram. The structure realistically reflects both options: **Project-Level** and **User-Level**.

To avoid modifying your actual home directory, the user-level structure has been simulated in the `user-level/` folder, while the project-level structure is in the `project-level/` folder.

## Core Components
The architecture is built on four core components:
1. **RULES (Always Loaded):** Global instructions and guidelines such as code style, testing, and API design.
2. **SKILLS (On Demand):** Custom commands, references, and executable scripts designed for specific tasks.
3. **HOOKS (Event-Driven Automation):** Automated triggers and scripts (like file protection) governed by settings.
4. **AGENTS (Specialized Roles):** Task-specific agent profiles and their corresponding memory storage.
`
---

## 1. Project-Level Structure (`project-level/`)
This structure resides within your specific project repository (e.g., `your-project/`) and is typically shared with the team via version control, with some specific exceptions.

*   `CLAUDE.md` (Root level): A high-level description or entry point for Claude configuration specific to this repository. Shared in the repo.
*   `.claude/`: The main configuration directory for project-specific Claude settings.
    *   `CLAUDE.md`: Internal documentation or specific instructions for the `.claude` directory configuration.
    *   `settings.json`: Project-wide settings and configurations for Claude. Shared in the repo.
    *   `settings.local.json`: Local, user-specific overrides for project settings. **This file is gitignored** to prevent leaking personal paths, API keys, or machine-specific setup.
    *   `rules/`: Contains Markdown files that are **Always Loaded** by Claude to provide context.
        *   `code-style.md`: Defines coding standards, linting rules, and formatting preferences.
        *   `testing.md`: Outlines the testing frameworks, conventions, and requirements.
        *   `api-design.md`: Specifies rules for designing, documenting, and implementing APIs.
    *   `skills/`: Contains **Custom Commands** and modular capabilities loaded **On Demand**.
        *   `<skill-name>/`: A directory dedicated to a specific skill.
            *   `SKILL.md`: The primary definition and instructions for the skill.
            *   `reference.md`: Supplementary documentation or context required by the skill.
            *   `examples/`: A directory containing examples of how to use the skill or expected outputs.
            *   `scripts/helper.sh`: Executable scripts that the skill might invoke to perform complex local operations.
    *   `agents/`: Contains configurations for **Specialized Roles**.
        *   `<agent-name>.md`: Defines the persona, prompt, and specialized instructions for a specific agent role (e.g., `frontend-expert.md`).
    *   `hooks/`: Contains scripts for **Event-Driven Automation**.
        *   `protect-files.sh`: A script executed on specific events (e.g., pre-commit, file modification) to prevent accidental changes to sensitive files.
    *   `commands/`: A directory for legacy commands, kept for backward compatibility.

### Why & When to use Project-Level?
**Why:** To ensure everyone working on the project shares the same rules, skills, and agents, leading to consistent AI behavior across the team.
**When:** You should define these files when setting up a new repository, whenever team conventions change, or when you build a tool/script that benefits the entire project.

---

## 2. User-Level Structure (`user-level/`)
This structure corresponds to the global configuration located in the user's home directory (e.g., `~/.claude/`). It defines personal setups, preferences, and cross-project memory.

*   `CLAUDE.md`: Global personal instructions and setup details for Claude (Personal Setup).
*   `settings.json`: Global user settings that apply across all projects unless overridden by project-level settings.
*   `rules/`: Global rules applied to all projects the user works on (e.g., "Always use Vim keybindings in code examples").
*   `skills/`: Global skills available across all projects.
    *   `<skill-name>/SKILL.md`: Definition of a globally available skill (e.g., a script to deploy to your personal server).
*   `agents/`: Globally available specialized agent personas.
    *   `<agent-name>.md`: Definition of a globally available agent you prefer to use everywhere.
*   `projects/`: Directory managing data and memory for specific projects.
    *   `<project-hash>/`: A uniquely hashed directory corresponding to a specific local project workspace.
        *   `memory/`: Contains auto-generated contextual memory for the specific project.
            *   `MEMORY.md`: Core memory file tracking overarching project goals, progress, and past context.
            *   `topic-files.md`: Automatically generated memory tracking specific topics, architectural decisions, or sub-systems (**Auto-Memory**).

### Why & When to use User-Level?
**Why:** To maintain your personal preferences, tools, and continuity across multiple disparate projects without imposing those preferences on your team members.
**When:** You should define these files when you have workflows, personal scripts, or specific AI prompt styles you want to carry with you regardless of the repository you are currently working in. Auto-Memory generates naturally over time as you work.
