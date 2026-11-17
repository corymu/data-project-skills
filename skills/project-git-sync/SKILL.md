---
name: project-git-sync
description: Commit and push a project to GitHub when a phase completes, or at session end if a phase is unfinished. Checks for large or data files before committing and asks before every push. Use when a project phase is done, when wrapping a session in a git project, or when the user says "push this", "commit and push", or "sync to GitHub". Works for any project with a git remote, not only data projects.
---

# Project Git Sync

## 1. Check
- `git status` and `git remote -v`. No repo or no remote: say so and stop. Do not create one here (that is `new-data-project` or `adopt-data-project`).
- List staged and modified files over 5 MB, and anything under `Project Files/data/`. Warn and ask before including them. Suggest `.gitignore` instead.

## 2. Message
- Phase done: `phase N: description`
- Session ended mid-phase: `session YYYY-MM-DD: phase N in progress`
- Read the phase number from `CHECKLIST.md` and session notes from `MEMORY.md` when they exist. Description is one specific line, not "update" or "final".

## 3. Ask, then push
- Show: files changed, the message, the branch, the remote.
- Ask. Phase approval in the same message counts as yes for one commit and push.
- `git add` named files or folders, not blind `-A`, if anything looked off in step 1.
- `git commit`, then `git push`. Never force push. Never change repo visibility.

## 4. Report
One line: commit hash, file count, pushed or failed (with the shortest decisive error line).
