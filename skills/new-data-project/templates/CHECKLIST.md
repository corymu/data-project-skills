# {{PROJECT_NAME}} - Checklist

Tick by hand. One action per step. A phase is done only when its Done-when is true.
Phases are editable per project.

## Phase 1 - Setup
- [ ] 1.1 Put the dataset in `Project Files/data/`
- [ ] 1.2 Create `requirements.txt`
- [ ] 1.3 Create the first notebook in `Project Files/Python/`
- [ ] 1.4 Confirm the repo is created and the first push worked

**Done when:** data loads in the notebook and the repo has one pushed commit.

## Phase 2 - EDA
- [ ] 2.1 Answer: what does one row represent?
- [ ] 2.2 Answer: which columns matter most to the business question?
- [ ] 2.3 Write your hypothesis going in
- [ ] 2.4 Check shape and data types
- [ ] 2.5 Check missing values and decide what to do
- [ ] 2.6 Check distributions of key columns
- [ ] 2.7 Check outliers
- [ ] 2.8 Check key relationships to the business question
- [ ] 2.9 Write one finding you did not expect

**Done when:** every step has a one-sentence written insight and you can say which hypotheses still hold.

## Phase 3 - Analysis
{{ANALYSIS_STEPS}}

**Done when:** each key question has a written conclusion and at least one SQL query exists.

## Phase 4 - Visualization
- [ ] 4.1 Write the takeaway sentence for chart 1
- [ ] 4.2 Build chart 1 with title, labels, source note
- [ ] 4.3 Repeat for each remaining chart
- [ ] 4.4 Assemble the final dashboard or figure set
- [ ] 4.5 Save the link or export in `README.md`

**Done when:** every chart has a takeaway and the main deliverable answers the business question at a glance.

## Phase 5 - README
- [ ] 5.1 Draft the summary in plain English
- [ ] 5.2 Write findings as conclusions
- [ ] 5.3 Add tools used, data source, how to run
- [ ] 5.4 Re-read the summary for jargon

**Done when:** a non-analyst can read the summary and understand what you found.

## Phase 6 - Code Quality
- [ ] 6.1 Remove dead code
- [ ] 6.2 Add a one-line comment to each function
- [ ] 6.3 Name magic numbers
- [ ] 6.4 Run the notebook top to bottom
- [ ] 6.5 Check `requirements.txt` against imports

**Done when:** the notebook runs clean top to bottom.

## Phase 7 - Final Review
- [ ] 7.1 Check the red-flag list (no README, no conclusions, notebook broken, question unanswered)
- [ ] 7.2 Answer: what will a hiring manager remember after 5 minutes?
- [ ] 7.3 Decide: make the repo public
- [ ] 7.4 Add lessons learned to the project `CLAUDE.md` guardrails

**Done when:** no red flags remain and the 5-minute answer is specific.
