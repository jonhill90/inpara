---
title: <Project name>
description: <One line: the outcome this project delivers>
status: draft
date: YYYY-MM-DD
type: project
id: <YYYYMMDDhhmmss##>
---

# <Project name>

Up: `[Projects](02-projects.md)` (a real link in the saved map)

**<The description line again.>**

Save as `02-projects/<slug-of-title>.md`: one note with links only, and no folder. A plan or status page kept current is a handbook note in `01-notes/01h-handbook/`, a task is a note in `01-notes/01t-tasks/`, and a finished review kept only as a record goes in `05-archive/`. Status: `draft` while planning, `current` while active, `replaced` when done or cancelled. Every project map has these sections in this order, so every agent writes it the same way: six hand-written sections, then one block of link sections. The block lists each link once, as `- [Name](path): reason`, under the heading for the folder it points to (Projects, Areas, Research batches, Runbooks, Handbook pages, Tasks, Incidents, Worklogs, Meetings, Atomic notes, Samples, Day logs, Resources, Inbox, Archive, How this store works), in path order, with headings that have no links left out. `check_knowledge_store.py <store> --maps-write` from the organize-repository skill writes the block, and CI fails on a map that drifts. Delete this paragraph when you save. Leave `_Not written yet._` in a hand section that has nothing true to say yet.

## Objective

<What success looks like, in one or two sentences.>

## Context

<Why this project matters, and which areas it serves.>

## Scope

- **In:** <what you will do and deliver>
- **Out:** <what you explicitly won't do>

## Tasks

- [ ] <Task>

## Success criteria

- <How you will know it is done>

## Outcome

<Filled in when the project ends: what was delivered, lessons learned, and the notes written from it.>

<!-- map: start (written by org_check.py --maps-write) -->

## Areas

- [<Area>](../03-areas/<area>.md): <how this project serves it>

## Handbook pages

- [<Plan>](../01-notes/01h-handbook/<id>.md): <what it decides>

## Tasks

- [<TASK-NNNN: task>](../01-notes/01t-tasks/<id>.md): <what it delivers>

## Atomic notes

- [<Note>](../01-notes/01a-atomic/<id>.md): <why the project needs it>

## Resources

- [<Resource>](../04-resources/04d-documents/<document>.md): <why the project needs it>

<!-- map: end -->
