#!/bin/bash
# Hook: PreToolUse — Bash tool
# Blocks destructive git commands on main/master.

INPUT=$(cat)  # Tool input arrives as JSON on stdin
CMD=$(echo "$INPUT" | jq -r '.command // ""')

if echo "$CMD" | grep -qE "git push.*--force|git reset --hard|git clean -f"; then
  echo "BLOCKED: Destructive git command detected. Run manually if intentional." >&2
  exit 2  # Exit code 2 = block the tool call
fi

exit 0  # Allow
