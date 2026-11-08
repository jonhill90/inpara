---
title: Example workflow
description: One subject followed through INPARA for three months, from inbox captures to atomic notes, an area map, a project and a finished project.
status: current
date: 2025-06-08
id: 2026110801100018
type: meta
---

# Example workflow

A concrete example of knowledge moving through INPARA. The subject is cloud infrastructure work; the same flow fits any subject.

## Day 1: capture

Five quick captures land in `00-inbox/` during the day:

```text
00-inbox/
- Databricks workspace failing to start, DNS issue?
- Terraform state got corrupted in dev
- A colleague mentioned managing on-premises servers from the cloud
- Blog post about hub-and-spoke network topology
- Error: "Private endpoint not accessible" in staging
```

## Day 1 evening: sort with the wizard

Each capture goes through the wizard in [ORGANIZE.md](../ORGANIZE.md), first yes wins:

| Capture | Wizard answer | Saved as |
|---|---|---|
| Databricks DNS issue | 6: we wrote it, one idea | `01-notes/01a-atomic/2025060819300001.md` ([example](example-note.md)) |
| "Private endpoint not accessible" | 0: same subject as the note above | added to that note, not a new file |
| Terraform state corruption | 6: one idea | `01-notes/01a-atomic/2025060819450001.md` |
| Hybrid server management | 6: one idea | `01-notes/01a-atomic/2025060819500001.md` |
| Hub-and-spoke blog post | 3: someone else made it | `04-resources/04c-clippings/hub-and-spoke-network-topology.md`, plus a line in a note about why it matters |

Each note is named by its id, the moment it was saved; its title sits in front matter. The clipping keeps a word name.

## Week 1: the area map appears

By the end of the week eight notes share one subject. That cluster earns a map: `03-areas/cloud-infrastructure.md` ([example](example-area.md)). It links every note and the captured page, each with a reason, grouped by subtopic. It also records a pattern: DNS is the hard part of every private endpoint so far.

The area and its map of content are the same note.

## Week 2: a project emerges

The map's pattern points at a clear outcome: automate private endpoint DNS once. That becomes `02-projects/private-endpoint-module.md` ([example](example-project.md)), a map note linking the notes and the clipped zone page it uses. Its design is a handbook page in `01-notes/01h-handbook/`, and each step is a task in `01-notes/01t-tasks/` whose state changes as work moves; the map links them all. The area map links the project.

## Month 2: resources grow

Building the module, you consult the official list of Private Link DNS zones again and again. It is clipped as `04-resources/04c-clippings/private-link-dns-zones.md` with `source:` in its front matter, and linked from the area map and the project map. Your own notes about it stay in `01-notes/`.

## Month 3: the project finishes

The module ships. Nothing moves:

- the project map stays at `02-projects/private-endpoint-module.md`, with `status: replaced` and an Outcome section
- the lesson about testing becomes an atomic note, linked from the project and the area
- the area map moves the project link to its Finished section, with the outcome as the reason

No link broke, and git keeps every earlier version.

## What three months produced

- 15 atomic notes, each one idea, each on at least one map
- 1 area map that a person browses instead of the folders
- 1 finished project and 1 started, each a map note with its plans beside it
- 5 captured pages, separate from the notes about them
- 0 renames, 0 moves, 0 copies

## Why it works

- **Bottom-up emergence.** The map appeared only after notes clustered, and the project only after the map showed a pattern.
- **One home per file.** Every capture had exactly one wizard answer, so the same file would land in the same place again.
- **Maps for people, notes for agents.** A person reads the area and project maps; agents keep the notes, captures and links current, and the checks catch what they miss.
