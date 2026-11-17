---
name: new-data-project
description: Creates a new data analytics portfolio project. Runs a kickoff interview, gets an approved projected output, scaffolds a project folder with CLAUDE.md, FEATURES.md, MEMORY.md, README.md, CHECKLIST.md and Project Files, then sets up git and a private GitHub repo. Use when the user says "new data project", "start a portfolio project", "set up a data project", or has a dataset and wants a project built around it. Runs once per project. For ongoing sessions use data-project-guide.
argument-hint: [project name]
---

# New Data Project

## Argument
Optional project name. If given, use it as the project name and skip asking for it.

Runs once per project. Templates are in the `templates/` folder next to this SKILL.md (the base directory shown when the skill loads). Read them from there.

Ask one question at a time. Say briefly why each matters. Vague business question: push back once, kindly, before moving on. Use a multiple-choice question tool when options are clean.

## 0. Projects folder

1. Read `~/.config/data-project-skills/config.json`. Expected shape: `{"projects_root": "/absolute/path"}`.
2. Valid and the folder exists: propose `[projects_root]/[project-name]`. Missing, unreadable or the folder is gone: fall back to `~/projects` and say so. Never error out.
3. Ask where to create it, with the proposal as the default.
4. If no config exists, or the user picked a different root, offer once to save it as the permanent default. Create `~/.config/data-project-skills/` if needed. Write the file only on yes.

## 1. Interview

1. **Start point:** scratch (help pick a domain and dataset first) or has a dataset.
2. **Business question:** one sentence, implies a decision, has an audience. Weak: "analyze sales data". Strong: "Which categories drove Q3 revenue growth, and what does that mean for Q4 inventory?"
3. **Domain and audience.**
4. **Dataset source.** If none, suggest public sources for the domain.
5. **Success definition.** Must name at least one deliverable.
6. **3 key questions.** Concrete, answerable with data. These become hypotheses.
7. **Out of scope.** Suggest examples if stuck.
8. **Repo name.** Suggest `[domain]-[question-summary]-analysis`.

**Gate:** the business question is one clear sentence and success names a deliverable.

## 2. Projected output

Present before saving anything: title, question, audience, deliverables, 3 hypotheses, what "done" looks like (2-3 sentences), scope boundary, hiring-manager takeaway line. Wait for approval. Edit until approved.

## 3. Scaffold

Create the project folder:

```
[Project Name]/
  Project Files/{Python, data, other}   (add .gitkeep to data/)
  CLAUDE.md  FEATURES.md  MEMORY.md  README.md  CHECKLIST.md  .gitignore
```

Fill the templates from the interview. `.gitignore` comes from `templates/gitignore.txt`. In `CHECKLIST.md`, replace `{{ANALYSIS_STEPS}}` with one step per key question (3.1, 3.2, 3.3 style, one action each) plus a step for one SQL query. Phases can be edited if the project does not use Jupyter, SQL or a dashboard tool.

## 4. Git

1. `git init`, first commit `phase 0: scaffold`.
2. Ask before creating the repo. On yes: `gh repo create [repo-name] --private --source=. --push`. If `gh` is missing or not logged in, say so and give the one command to fix it. Do not try workarounds.
3. Never make the repo public here. That is the Final Review phase, the user's call.

## 5. Handoff

Say what was created in 3 lines. Next session: `data-project-guide`, starting at Phase 1 step 1.1. `MEMORY.md` already says so.
