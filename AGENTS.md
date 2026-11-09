# Agent rules for this repository

*(`CLAUDE.md` imports this file with `@AGENTS.md`.)*

This repository defines INPARA and is itself an INPARA store at its root. It holds the system's rules, guides, templates and examples, not anyone's notes.

## Where things go

The store follows `99-meta/ORGANIZE.md`.
- Before saving, run its wizard: answer the steps in order, take the first yes, then name the file by the naming rule. A note is named by its id, `YYYYMMDDhhmmss##`; hubs, maps and files that are not notes keep word names.
- One home per item. Link to it from every map that uses it; never copy.
- Every new item gets one line, with a one-line summary, in its hub: the root `README.md`, or the folder note `<folder>/<folder>.md` below it.
- Give every note its front matter and its tags by the rules in `99-meta/tags.md`. Tags go in front matter only, never as `#tags` in body text.
- Track work as tasks: one note per task in `01-notes/01t-tasks/`, its state in front matter. A task never moves when its state changes.
- To find something, start at `README.md`, then the hub, then only the items you need. Name the files you opened.

## Docs or notebook?

Before saving, ask: is it about this repository's system, INPARA itself, saying why it is so, what it is, or how to use or change it? Yes: it is this repository's documentation (its rules, guides, templates and examples) and goes here by pull request. No: it is what agents learned while working on it (research, measurements, notes, thinking), and it goes in the agent notebook, `jonhill90/agent-notebook`, which may link here but never copies the rules. Source: the store test in central-hub D-0026.

## Rules an agent would get wrong from the tree alone

- Templates and examples are about how the store works, so they live in `99-meta/`, even when they show a note, a project or an area. Files in `99-meta/` keep word names.
- Lettered folders are flat: no item folders inside `01-notes/` or `04-resources/`, only the lettered kind and sub-kind folders the standard lists.
- Only Markdown notes of other people's work go in git; the originals (PDFs, videos, repository copies) stay local under `.cache/`.
- Do not create a lettered folder (`01a-atomic/` and the like) until a real file goes in it. Git keeps no empty folders, and the hubs list the lettered folders in words instead.
- Example links that point at notes which do not exist go inside code blocks or use `[[wikilinks]]`, so the link check does not count them as dead.
- This repository is public. Write no personal or employer details, hostnames, private network names or secrets.

## Checks

CI runs `check_knowledge_store.py` from the organize-repository skill in `jonhill90/skills`, pinned by commit (`.github/workflows/knowledge-check.yml`). To run it locally, download that file at the same commit and run `python3 -I check_knowledge_store.py .` from the repository root.
