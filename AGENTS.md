# Agent rules for this repository

*(`CLAUDE.md` imports this file with `@AGENTS.md`.)*

This repository defines INPARA and is itself an INPARA store at its root. It holds the system's rules, guides, templates and examples, not anyone's notes.

## Where things go

The store follows `99-meta/ORGANIZE.md`.
- Before saving, run its wizard: answer the steps in order, take the first yes, then name the file by the naming rule.
- One home per item. Link to it from every map that uses it; never copy.
- Every new item gets one line, with a one-line summary, in its hub `README.md`.
- To find something, start at `README.md`, then the hub, then only the items you need. Name the files you opened.

## Rules an agent would get wrong from the tree alone

- Templates and examples are about how the store works, so they live in `99-meta/`, even when they show a note, a project or an area.
- Do not create a lettered folder (`01a-atomic/` and the like) until a real file goes in it. Git keeps no empty folders, and the hubs list the lettered folders in words instead.
- Example links that point at notes which do not exist go inside code blocks or use `[[wikilinks]]`, so the link check does not count them as dead.
- This repository is public. Write no personal or employer details, hostnames, private network names or secrets.

## Checks

CI runs `check_knowledge_store.py` from the organize-repository skill in `jonhill90/skills`, pinned by commit (`.github/workflows/knowledge-check.yml`). To run it locally, download that file at the same commit and run `python3 -I check_knowledge_store.py .` from the repository root.
