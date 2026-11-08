---
title: <Area name>
description: <One line: the subject this area covers, in the words someone would search for>
status: current
date: YYYY-MM-DD
type: area
id: <YYYYMMDDhhmmss##>
---

# <Area name>

Up: `[Areas](03-areas.md)` (a real link in the saved map)

**<The description line again.>**

Save as `03-areas/<area id>.md`: one note, no folder, and add the area's row to `99-meta/tags.md` in the same change. This map is the area's front page. It links; it does not hold the material itself. Every area map has these sections in this order, so every agent writes it the same way: five hand-written sections, then one block of link sections. The block lists each link once, as `- [Name](path): reason`, under the heading for the folder it points to (Projects, Areas, Research batches, Runbooks, Handbook pages, Tasks, Incidents, Worklogs, Meetings, Atomic notes, Samples, Day logs, Resources, Inbox, Archive, How this store works), in path order, with headings that have no links left out. `check_knowledge_store.py <store> --maps-write` from the organize-repository skill writes the block, and CI fails on a map that drifts. The tagged-items section lists every note with this area in its `area` front matter. Delete this paragraph when you save. Leave `_Not written yet._` in a hand section that has nothing true to say yet.

## Purpose

<Why this area matters: the role, responsibility or lasting interest.>

## Scope

<What this area covers, and what it leaves to other areas.>

## Current focus

<Two or three themes you are working on now.>

## Patterns and open questions

<What you see only by reading these links together, and what is still unclear.>

## Potential projects

<Work that has started to show itself here.>

<!-- map: start (written by org_check.py --maps-write) -->

## Projects

- [<Project>](../02-projects/<project>.md): <status, and how it serves this area>

## Areas

- [<Area>](<area>.md): <how the two connect>

## Atomic notes

- [<Note>](../01-notes/01a-atomic/<id>.md): <why it matters here>

## Resources

- [<Clipping>](../04-resources/04c-clippings/<clipping>.md): <what it is used for>

<!-- map: end -->

## Items tagged with this area

<!-- tag-map: start (written by tag_maps.py) -->
<!-- tag-map: end -->
