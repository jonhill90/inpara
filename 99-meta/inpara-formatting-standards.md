---
title: INPARA formatting standards
description: Front matter, headings and link rules for every INPARA file, in plain Markdown that works in any tool.
status: current
date: 2026-11-05
---

# INPARA formatting standards

> **Principle**: plain Markdown with four front matter fields, and links that say why they exist.
> **Goal**: any tool, any person and any agent can read, check and move the store.

Names and folders are set by [ORGANIZE.md](ORGANIZE.md). This page covers what goes inside a file.

## Front matter

Every main file starts with the same four fields:

```yaml
---
title: Private endpoint DNS zone for Databricks
description: Why a Databricks workspace behind a private endpoint needs its own private DNS zone, and how to link it.
status: draft | current | replaced
date: 2026-11-05
---
```

| Field | Meaning |
|---|---|
| `title` | The name a person reads. The file name is the slug of the first title, and is never renamed; fix the title here instead. |
| `description` | One line with the words someone would search for. Hubs and maps show it, so a reader can choose without opening the file. |
| `status` | `draft` while being written, `current` while in use, `replaced` when finished or superseded. A replaced file stays where it is and says what replaced it. |
| `date` | The day it was created. Git keeps every later version. |

A captured resource adds `source:` with the URL or origin of the original.

No other field is required. Folders already say what kind of file it is, the path is the permalink because names never change, and maps say what a file belongs to, with a reason. Tags are allowed for a tool that uses them, but nothing in INPARA depends on them.

## Headings

- The `# Title` heading matches `title`.
- Atomic notes use **Notes**, **Thoughts** and **Links**.
- Maps use one heading per subtopic, each a list of links with reasons.
- Other kinds follow their template in [templates/](templates/).

## Links

- **Use relative Markdown links** for real links: `[Private endpoint DNS zone](../01-notes/01a-atomic/private-endpoint-dns-zone.md)`. The checks follow these links to find dead links and files nothing reaches. In Obsidian, turn off "Use [[Wikilinks]]" and set "New link format" to "Relative path to file".
- **Every link in a map carries a reason** on the same line: `- [Note](path): why it matters here`.
- **A link to something not written yet** goes in a code span or a `[[wikilink]]`, so it is not counted as a dead link. Write the note, then turn it into a real link.
- **External links** use standard Markdown: `[Description](https://...)`. A page you will need again is captured into `04-resources/04p-pages/`.

## Quality checklist

- Front matter has all four fields, and `description` reads well on its own.
- The note holds one idea (atomic) or is clearly a kept-current page (handbook).
- It is linked from at least one area or project map, with a reason.
- Every relative link resolves.
- Nothing in it is a copy of another file: link instead.
