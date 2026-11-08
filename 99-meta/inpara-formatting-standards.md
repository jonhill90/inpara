---
title: INPARA formatting standards
description: Front matter, headings and link rules for every INPARA file, in plain Markdown that works in any tool.
status: current
date: 2025-06-08
id: 2026110801100011
type: meta
---

# INPARA formatting standards

> **Principle**: plain Markdown with fixed front matter fields, and links that say why they exist.
> **Goal**: any tool, any person and any agent can read, check and move the store.

Names and folders are set by [ORGANIZE.md](ORGANIZE.md). This page covers what goes inside a file.

## Front matter

Every note starts with the same fields:

```yaml
---
title: Private endpoint DNS zone
description: Why a Databricks workspace behind a private endpoint needs its own private DNS zone, and how to link it.
status: draft | current | replaced
date: 2026-11-05
id: 2026110519300001
type: atomic
area: [cloud-networking]
tags: [note, 11-2026, cloud-networking]
---
```

| Field | Meaning |
|---|---|
| `title` | The name a person reads. The note's file is named by its id, so fixing the title never breaks a link. |
| `description` | One line with the words someone would search for. Hubs and maps show it, so a reader can choose without opening the file. |
| `status` | `draft` while being written, `current` while in use, `replaced` when finished or superseded. A replaced file stays where it is and says what replaced it. |
| `date` | The day it was created. Git keeps every later version. |
| `id` | `YYYYMMDDhhmmss##`: the moment the note was made, in the store's local time, plus a counter 01-99. It is also the file name, and never changes. |
| `type` | The kind of note, with its folder: `atomic`, `handbook`, `runbook`, `task`, `clipping`, `resource`, `area`, `project`, `hub`, `meta` and the like. |
| `area` | The note's areas, ids from [tags.md](tags.md). Each area's map links the note. |
| `tags` | Given by fixed rules: the folder's kind words, the month `MM-YYYY`, the `area` ids and topic words ([tags.md](tags.md)). One line, in front matter only; body text never holds a `#tag`. |

Some kinds add fields:

- A clipping adds `source:` (the URL or origin of the original), and `was:` and `pin:` when it replaces an older copy.
- A task adds `label`, `state`, `waits-on`, `owner`, `horizon` and `source` ([task.md](templates/task.md)).
- A research batch note adds `batch: NNNN-<name>`.

## Headings

- The `# Title` heading matches `title`.
- Atomic notes use **Notes**, **Thoughts** and **Links**.
- Maps use one heading per subtopic, each a list of links with reasons.
- Other kinds follow their template in [templates/](templates/).

## Links

- **Use relative Markdown links** for real links: `[Private endpoint DNS zone](../01-notes/01a-atomic/2026110519300001.md)`. The checks follow these links to find dead links and files nothing reaches. In Obsidian, turn off "Use [[Wikilinks]]" and set "New link format" to "Relative path to file".
- **Every link in a map carries a reason** on the same line: `- [Note](path): why it matters here`.
- **A link to something not written yet** goes in a code span or a `[[wikilink]]`, so it is not counted as a dead link. Write the note, then turn it into a real link.
- **External links** use standard Markdown: `[Description](https://...)`. A page you will need again is clipped into `04-resources/04c-clippings/`.

## Quality checklist

- Front matter has every field its kind needs, and `description` reads well on its own.
- Its tags follow the rules in [tags.md](tags.md), and no `#tag` sits in body text.
- The note holds one idea (atomic) or is clearly a kept-current page (handbook).
- It is linked from at least one area or project map, with a reason.
- Every relative link resolves.
- Nothing in it is a copy of another file: link instead.
