# INPARA Knowledge Management System

**I**nbox → **N**otes → **P**rojects → **A**reas → **R**esources → **A**rchive

A bottom-up knowledge management system designed for autistic traits and bottom-up cognitive processing.

Before saving, run the wizard in 99-meta/ORGANIZE.md; to find anything, follow the hub lists from here.

## How INPARA is shaped

Each area is one map of content, `03-areas/<area>.md`, and each project is one map note, `02-projects/<project>.md`. Notes and resources are the things themselves; maps link to them, each link with a reason. A note is named by its id (`YYYYMMDDhhmmss##`, Eastern time), and its title, area and tags are in front matter; hubs, maps and files that are not notes keep word names. Lettered folders are flat, and names never change after saving. Finished work stays where it is with `status: replaced`.

## Philosophy

INPARA is engineered to match natural thinking patterns by:
- Starting with atomic ideas rather than forcing categorization
- Allowing structure to emerge organically
- Minimizing cognitive friction in the capture-to-action pipeline
- Supporting iterative refinement and connection discovery
- Giving every file exactly one home, so the same file always lands in the same place

**Never force structure prematurely.** Let connections and categories emerge from the content itself.

## Folder structure

- [00-inbox](00-inbox/00-inbox.md): captured but not sorted yet: clippings, drawings and thoughts
- [01-notes](01-notes/01-notes.md): what we wrote: atomic notes, day logs, handbook pages, runbooks, incidents, meetings, research, samples, tasks and worklogs
- [02-projects](02-projects/02-projects.md): work that will end, one map note per project
- [03-areas](03-areas/03-areas.md): subjects that never end, one map note per area
- [04-resources](04-resources/04-resources.md): what someone else made, kept to reference: clippings, documents, harness material, courses, repository docs and videos
- [05-archive](05-archive/05-archive.md): records that arrived finished, kept as they were
- [99-meta](99-meta/99-meta.md): how this system works: the standard, tags, guides, templates, examples and Obsidian setup

## Getting started

1. Capture anything into `00-inbox/`.
2. Daily: run the wizard in [ORGANIZE.md](99-meta/ORGANIZE.md) on each inbox item. Most become notes in `01-notes/`.
3. Link every new note or resource from at least one area or project map, and give it its `area` and `tags`.
4. Keep tasks in `01-notes/01t-tasks/`, one note each, with the state in front matter.
5. Weekly: read the maps, add links with reasons, start a project when an outcome becomes clear.

The [workflow guide](99-meta/workflow-guide.md) walks through each step, the [templates](99-meta/templates/) give the front matter for each kind of file, and [Obsidian setup](99-meta/obsidian-setup.md) gives the theme, font and plugins for reading the store in Obsidian.

---

*Built for bottom-up thinkers who need structure without rigidity.*
