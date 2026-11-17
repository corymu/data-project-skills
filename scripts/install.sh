#!/usr/bin/env bash
# Copy the skills into a Claude Code skills folder. Default: ~/.claude/skills (all projects).
# Project-only install: ./scripts/install.sh /path/to/your/project/.claude/skills
set -euo pipefail

target="${1:-$HOME/.claude/skills}"
src="$(cd "$(dirname "$0")/.." && pwd)/skills"

mkdir -p "$target"
for dir in "$src"/*/; do
  name="$(basename "$dir")"
  if [ -e "$target/$name" ]; then
    echo "skip   $name (already exists in $target, remove it first to update)"
  else
    cp -R "$dir" "$target/$name"
    echo "added  $name"
  fi
done
echo "Done. Restart Claude Code, then run: /new-data-project"
