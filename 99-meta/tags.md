---
title: Tags
description: The fixed list of areas and topic words, and the rules that give every note its tags.
status: current
date: 2026-11-08
id: 2026110801100009
type: meta
---

# Tags

Up: [Meta](99-meta.md)

Tags come from fixed rules, so two agents give a note the same tags ([ORGANIZE.md](ORGANIZE.md), section 2). A tool may add the tags the rules give; it never removes one.

## Rules

1. **Kind.** The word of the note's folder: `inbox`, `thought`, `drawing`, `note`, `research`, `handbook`, `runbook`, `meeting`, `worklog`, `incident`, `sample`, `task`, `project`, `moc`, `resource`, `clippings`, `document`, `harness`, `course`, `repo`, `video`. A day log takes `daily`.
2. **Month.** `MM-YYYY`, from `created` or the date, else from the id.
3. **Area.** Each id in the note's `area` front matter, from the area table below. An area is a subject that never ends: each id has one map, `03-areas/<id>.md`, and that map links every note with the area. A new area is a new row here and its map, in the same change. Use one to three areas, the narrowest whose definition fits. A synonym is not a tag: write the id it belongs to.
4. **Topic.** A word from the topic table below found in the note's title, description or a heading. A research note also takes its batch hub's topics. A new topic word is a new row, with its source.

Kind, month and topic tags are not areas and make no map line. Tags sit in front matter only, as a one-line list such as `tags: [note, 11-2026, home-lab]`; body text never holds a `#tag`. `05-archive/` and `99-meta/` are not tagged by these rules.

## Areas

Each row is added with the area's first map. None yet.

| id | label | synonyms | broader | definition |
|---|---|---|---|---|

## Topic words

Named products and protocols, each with its source. None yet.

| word | source |
|---|---|
