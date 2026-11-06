---
title: <Area name>
description: <One line: the subject this area covers, in the words someone would search for>
status: current
date: YYYY-MM-DD
---

# <Area name>

Up: `[Areas](README.md)` (a real link in the saved map)

**<The description line again.>**

Save as `03-areas/<slug-of-title>.md`: one note, no folder. This map is the area's front page. It links; it does not hold the material itself. Every area map has these sections in this order, so every agent writes it the same way: five hand-written sections, then one block of link sections. The block lists each link once, as `- [Name](path): reason`, under the heading for the folder it points to (Projects, Areas, Plans, Research batches, Handbook pages, Atomic notes, Samples, Day logs, Resources, Inbox, Archive, How this store works), in path order, with headings that have no links left out. In a store that carries `org_check.py` (the Research repository), `org_check.py . --maps-write` writes the block and CI fails on a map that drifts. Delete this paragraph when you save. Leave `_Not written yet._` in a hand section that has nothing true to say yet.

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

- [<Note>](../01-notes/01a-atomic/<note>.md): <why it matters here>

## Resources

- [<Captured page>](../04-resources/04p-pages/<page>.md): <what it is used for>

<!-- map: end -->
