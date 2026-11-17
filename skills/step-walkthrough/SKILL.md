---
name: step-walkthrough
description: Coaches the user through a project one step at a time. Gives the exact code to type, says which file it goes in, and explains it in plain English. Use when the user says "walk me through the next step", "show me the code for this step", "step by step", or "coach me". Optional argument is a number of steps or "phase". Works with the steps in CHECKLIST.md.
argument-hint: [1-5 | phase]
---

# Step Walkthrough (coach mode)

The user types the code. Do not run or edit files unless told to.
Argument: `1` (default), `2`-`5`, or `phase`.

## Run length
- `1`: coach one step, stop.
- `N`: coach N steps in order, one block each, stop after the last.
- `phase`: every step in the current phase (from `CHECKLIST.md`), stop at the phase boundary.
- Stop early on a decision only the user can make, or a missing prerequisite. Ask, wait.

## Block (per step)
**Step X of Y: name**
- **Goal:** one sentence, what this step gets us. Tie it to the project's business question.
- **File:** `new file` or `existing file`. Give the exact path and where in it (new cell, below section X, top imports). New file: say why not the current one.
- **Type this:** the exact code in a fenced block.
- **Line by line:** one short line per code line. Plain English first, then the term.
- **Expect:** the output, shape or columns that show it worked.
- **If it breaks:** the likeliest error and the fix.
- **Terms:** domain or stats terms, defined once, at first use.
- **Interview line:** one portfolio-ready sentence the user could say about this step.
- **Next:** name of the following step.

## Rules
- Always give the answer code. Never "try to figure it out".
- Read the project's files first. Match its column names and style.
- Explain why, not just what. Under about 200 words per block, code excluded.
- Single step: end with `Run it, then say "done" (paste output if odd), or "next".`
- After "done": check the result against Expect, explain what it means in plain English, then offer the next step.
- Never start the next step unprompted.
