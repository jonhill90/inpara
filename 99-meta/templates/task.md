---
id: <from the time you save it: YYYYMMDDhhmmss##>
type: task
title: "<TASK-NNNN>: <what will be done, in a few words>"
description: "<One line: what will be done and why>"
label: <TASK-NNNN, the next free label>
external-refs: []
state: ready
waits-on: []
owner: "<who does it>"
horizon: "Now"
source: "<where the task came from>"
area: [<area id>]
status: current
tags: [task, <MM-YYYY>, <area id>]
---

# <TASK-NNNN>: <what will be done, in a few words>

Up: `[Tasks](01t-tasks.md)` (a real link in the saved note)

Save as `01-notes/01t-tasks/<id>.md`, and add one line under its state in the hub `01t-tasks.md`. Delete this paragraph when you save.

`state` is one of: `jon` (waiting on the store's owner), `doing` (someone is on it), `ready` (could start now, nobody on it), `blocked` (waiting on another item, named in `waits-on`), `idea` (not a commitment), `parked` (paused by the owner) or `done` (finished, with evidence). `horizon` is `Now` (on the current path), `Next` or `Later`. When the state changes, change only the front matter and the hub line: the task never moves, so its links keep working.

<What will be done, in a sentence or two.>

**State:** `ready` · **Owner:** <who> · **Horizon:** Now

## Source

<Where the task came from, with a link.>
