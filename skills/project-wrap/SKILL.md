---
name: project-wrap
description: Ends a working session on a project that has CHECKLIST.md and MEMORY.md. Updates MEMORY.md with steps completed, scope changes and an explicit next step, ticks finished steps in CHECKLIST.md, and offers a commit and push. Use when the user says "wrap up", "end session", "wrap this session", "log what we did", or "save my progress" inside a project from new-data-project or adopt-data-project.
---

# Project Wrap

## 1. Find the project
Working folder has both `CHECKLIST.md` and `MEMORY.md`: use it. Otherwise ask which project. Neither file exists: say so and stop.

## 2. Gather
Scan the conversation and the project folder for: checklist steps completed this session, scope changes (question, key questions, deliverables, out of scope), blockers, files created or changed.

## 3. Propose edits, apply after approval
- `MEMORY.md` session log: dated entry with steps done, scope changes, blockers. Keep it under 8 lines.
- `MEMORY.md` "Next session": the explicit next checklist step, by number and name. Never "continue where we left off".
- `CHECKLIST.md`: tick steps completed this session. Tick only what has evidence.
- Scope changed: also propose the matching edit to `README.md` or `FEATURES.md`.

Show the edits as a short list. Apply only after approval.

## 4. Push
Offer `project-git-sync`. Phase finished: `phase N: ...`. Phase still open: `session YYYY-MM-DD: phase N in progress`.

## 5. Report
One line each: steps ticked, next step, pushed or not.
