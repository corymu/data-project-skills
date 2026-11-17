# {{PROJECT_NAME}}

## Identity

Data portfolio project. Business question: {{BUSINESS_QUESTION}}
Audience: {{AUDIENCE}}. Out of scope: {{OUT_OF_SCOPE}}

## Layout

- `Project Files/Python/` code, notebooks
- `Project Files/data/` raw and cleaned data (gitignored if large)
- `Project Files/other/` dashboards, exports, images
- `CHECKLIST.md` where I am. `FEATURES.md` what it is. `MEMORY.md` session log and next step. `README.md` public explainer.

## Session start

Read `MEMORY.md`, `CHECKLIST.md`, this file. Open with: "You're on [phase]. Last session: [x]. Next: [explicit step]."

## Session end

Update `MEMORY.md` (steps done, scope changes, explicit next step). Tick `CHECKLIST.md`. Offer commit and push.

## Git

- Commit and push when a phase completes. If a session ends mid-phase, commit and push at session end.
- Message format: `phase N: description` or `session YYYY-MM-DD: phase N in progress`.
- Ask before every push. Repo is private until Final Review.
- Never commit large data. Warn if a staged file is over 5 MB.

## Guardrails

### Scope
- The business question is the north star. Work that does not connect to it: stop and realign.
- No phase skipped. A phase that feels pointless means revisit the goal.
- Out-of-scope items are off limits. Flag and move on.
- A phase is not done until its done-condition in `CHECKLIST.md` is met. No starting the next phase before then.

### Analysis
- No ML or complex modeling if aggregation, groupby or pivots answer the question.
- SQL appears naturally somewhere. Not forced. Flag if absent by the Analysis phase.
- Every analysis step ties to one of the 3 key questions.

### Visualization
- One-sentence takeaway written before any chart.
- Every chart: title, labeled axes, data source note, and a comparison, trend or breakdown.

### README
- Plain English summary, no jargon.
- Findings stated as conclusions, not observations.

### Code quality
- No dead code. One-line comment per function. Named constants, no magic numbers.
- Notebook runs top to bottom clean. `requirements.txt` exists and is accurate.

### Drift
- Two sessions on one phase without finishing: raise it explicitly.
- `MEMORY.md` updated every session, no exceptions.
