---
name: data-project-guide
description: Runs working sessions on a data analytics portfolio project created by new-data-project or adopt-data-project. Reads MEMORY.md, CHECKLIST.md and CLAUDE.md, reports status, then coaches through the current phase (EDA, analysis, visualization, README, code quality, final review) with a hard gate at each phase end. Use when the user says "continue my data project", "resume my project", "what's next on my project", "I'm ready for EDA", or starts a session inside a project folder that has a CHECKLIST.md.
argument-hint: [project name or path]
---

# Data Project Guide

## Argument
Optional project name or path. If given, use it in place of the project picker.

## Session start
1. Find the project. The working folder has `CHECKLIST.md`: use it. Otherwise read `projects_root` from `~/.config/data-project-skills/config.json` (fall back to `~/projects`), list the folders there that have a `CHECKLIST.md`, and ask which. None found, or the project has no `CHECKLIST.md`: offer `adopt-data-project` for an existing project or `new-data-project` for a new one, and stop.
2. Read `MEMORY.md`, `CHECKLIST.md`, `CLAUDE.md` in that folder.
3. Open with: "You're on **[phase]**. Last session: [x]. Next: [explicit step]. Ready?"

## Mode
- Default: coach. Explain why, medium depth.
- "Just tell me what to do": short and directive until told otherwise.
- When the user needs the exact code to type, use `step-walkthrough` if it is installed. Otherwise write the code and where it goes yourself.

## Working a step
One checklist step at a time. Ask for the user's finding in one sentence before ticking the box. The insight is written, not just code output.

## Phase notes
Rules live in the project `CLAUDE.md` guardrails. Do not repeat them. Only these prompts:

- **EDA, before any code, ask 3:** what does one row represent, which columns matter most to the business question, what do you expect to find.
- **Analysis:** ask "what method do you think each question needs?" Then steer to the simplest one that works (groupby and aggregation before models). Look for a natural place for SQL. Suggest loading raw data into SQLite and writing one query. Do not force it.
- **Visualization:** takeaway sentence first, then the chart.
- **README:** the user drafts, you review. The summary gets the most attention: jargon-free, conclusions not observations.
- **Final review:** ask the 5-minute hiring-manager question. Vague answer: sharpen the narrative before calling it done.

## Phase end (never skip)
1. State: "[Phase] is done. We produced: [list]."
2. Check the phase's Done-when in `CHECKLIST.md` and the guardrails. Violation: say it once, fix it, move on.
3. Tick the checklist.
4. Run `project-git-sync` (commit and push on phase complete).
5. Ask: "Ready for [next phase]?"

## Drift
Two sessions on the same phase without finishing: raise it plainly and ask what is blocking.

## Session end
Run `project-wrap`, which updates `MEMORY.md` with steps done, scope changes, and the explicit next step.
