---
name: adopt-data-project
description: Brings an existing data project into the new-data-project workflow without rebuilding it. Reads the folder, creates only the missing CLAUDE.md, FEATURES.md, MEMORY.md, README.md and CHECKLIST.md, ticks checklist steps already done after checking disk, and wires up git. Use when the user says "adopt this project", "add this project to the workflow", "set up my old project like the new ones", or points at an existing project folder that has no CHECKLIST.md. Not for brand-new projects, which use new-data-project.
argument-hint: [path to project]
---

# Adopt Data Project

## Argument
Optional path to the project folder. If given, use it and skip asking which project.

Templates are in the `templates/` folder next to this SKILL.md (the base directory shown when the skill loads). Read them from there.

Rule: existing files are never moved, renamed or overwritten without a yes. Create what is missing, nothing more.

## 1. Pick and inspect
- Ask which project if not named. Stop if it already has `CHECKLIST.md` (use `data-project-guide`).
- Read: folder tree (top 2 levels), existing README, any notes or CLAUDE.md, `git status`, `git remote -v`, `git log --oneline -10`, notebook and script names.
- Print a short inventory: what exists, what is missing from the standard set, git state.

## 2. Interview, gaps only
Ask only what the folder cannot answer. One question at a time:
1. Business question (one sentence). Propose one drawn from the README or notebooks, ask to confirm or fix.
2. Audience and out of scope.
3. 3 key questions. Propose from what the code already analyzes.
4. Where the project stands: which phase the user thinks they are in.

Same gate as `new-data-project`: the question is one clear sentence.

## 3. Verify progress against disk
Draft the phase list from `templates/CHECKLIST.md`. For each step, check for evidence (data file present, notebook runs, README sections written, charts exist). Mark `[x]` only with evidence. Show the list with the evidence beside each ticked step. Unsure: leave unticked and flag it. Wait for approval.

## 4. Create missing files
Fill templates from the interview and inventory. Existing README: do not overwrite. Propose a merged version as a diff and apply only on yes. Existing `CLAUDE.md` or `MEMORY.md`: append the new sections, do not replace.

`MEMORY.md` first entry: dated "Adopted into workflow", what was found, and an explicit next step (the first unticked checklist step).

## 5. Layout (optional, one folder at a time)
Standard layout is `Project Files/{Python, data, other}`. Moving existing files is optional. Offer once. If yes, move one folder at a time and list what moved. If no, record the current layout in the `CLAUDE.md` Layout section instead.

## 6. Git
- Existing remote: keep it. Do not change it.
- No repo: `git init`. No remote: ask before `gh repo create [name] --private --source=. --push`.
- Add template `.gitignore` rules only for lines that are missing. Check history for large data files already committed. If found, warn and stop. Do not rewrite history.
- Commit as `adopt: add workflow files`. Ask before pushing.

## 7. Handoff
Tell the user the next session is `data-project-guide`, starting at the step in `MEMORY.md`.
