# Install

How to use the skills once installed: see [README.md](README.md).

## Contents

- [Requirements](#requirements)
- [Option A: Claude Code plugin (recommended)](#option-a-claude-code-plugin-recommended)
- [Option B: Copy the folders](#option-b-copy-the-folders)
- [Check it worked](#check-it-worked)
- [Set your projects folder (optional)](#set-your-projects-folder-optional)
- [Update](#update)
- [Uninstall](#uninstall)
- [Naming conflicts](#naming-conflicts)

## Requirements

- [Claude Code](https://claude.com/claude-code)
- `git`
- [GitHub CLI](https://cli.github.com) (`gh`), logged in, if you want Claude to create repos for you:

```bash
gh auth login
```

Without `gh`, the skills still work. They scaffold locally and tell you to create the repo yourself.

## Option A: Claude Code plugin (recommended)

Inside Claude Code:

```
/plugin marketplace add corymu/data-project-skills
/plugin install data-project-skills@data-project-skills
```

Restart Claude Code if the skills do not appear.

## Option B: Copy the folders

Clone the repo and run the script:

```bash
git clone https://github.com/corymu/data-project-skills.git
cd data-project-skills
./scripts/install.sh
```

This copies the six skills into `~/.claude/skills/`, available in every project. It skips any skill that already exists, so remove an old copy first to update.

Install for one project only:

```bash
./scripts/install.sh /path/to/your/project/.claude/skills
```

Or copy by hand:

```bash
cp -R skills/* ~/.claude/skills/
```

## Check it worked

Restart Claude Code and run:

```
/new-data-project
```

Installed as a plugin, use `/data-project-skills:new-data-project`. Claude should start the kickoff interview. See [Calling a skill](README.md#calling-a-skill) for every command and its optional argument. All six skills should appear when you ask Claude what skills are available.

## Set your projects folder (optional)

New projects default to `~/projects`. To change it permanently, create:

```json
// ~/.config/data-project-skills/config.json
{ "projects_root": "/absolute/path/to/your/projects" }
```

Or accept the prompt Claude gives you the first time you create a project. If the file is missing or the folder is gone, the skills fall back to `~/projects`.

## Update

- Plugin: `/plugin marketplace update data-project-skills`
- Copy install: pull the repo, delete the old skill folders in `~/.claude/skills/`, run `./scripts/install.sh` again.

## Uninstall

- Plugin: `/plugin uninstall data-project-skills@data-project-skills`
- Copy install: delete the six folders from `~/.claude/skills/`: `new-data-project`, `adopt-data-project`, `data-project-guide`, `step-walkthrough`, `project-wrap`, `project-git-sync`.

Your projects are untouched either way.

## Naming conflicts

If you already have a skill called `step-walkthrough` or `project-wrap`, the copy script skips it. Rename the existing one or the new one before installing.
