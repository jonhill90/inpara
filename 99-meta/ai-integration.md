---
title: AI integration
description: How agents and AI tools work in an INPARA store: the wizard before saving, maps kept complete, checks in CI, and people deciding.
status: current
date: 2025-06-08
id: 2026110801100013
type: meta
---

# AI integration

How to enhance an INPARA store with agents, AI tools and automation, while keeping the bottom-up emergence principles.

## The split between people and agents

| Who | Works in | Does |
|---|---|---|
| People | `02-projects/` and `03-areas/` maps | browse, decide, start and finish projects |
| Agents | `01-notes/` and `04-resources/` | capture, write notes, keep links and maps complete, run checks |

Every note and resource is reachable from some map, so a person never has to open the folders agents keep.

## Rules every agent follows

1. **Run the wizard before saving.** Answer the steps in [ORGANIZE.md](ORGANIZE.md) in order and take the first yes. Two agents saving the same file then pick the same folder and the same name.
2. **Search first.** If an item on the subject exists, add to it. A copy is never a new item.
3. **Name it by its id, and tag it.** A note's file is `<id>.md`; its tags come from the fixed rules in [tags.md](tags.md), in front matter only.
4. **Link it.** Add one line, with a one-line summary, to the folder's hub note `<folder>.md`, and one line with a reason to each area or project map that uses it.
5. **Track work as tasks.** One note per task in `01-notes/01t-tasks/`, with its state in front matter.
6. **Never rename.** Fix the title in front matter instead.
7. **Name what you read.** When an agent answers from the store, it names the files it opened, so a person can check what the answer rests on.
8. **Agents suggest, people decide.** Starting or ending a project, and making or splitting an area, are a person's calls.

## Integration points by stage

### 00-inbox: capture
- Voice-to-text transcription, formatted as Markdown
- Web clips and OCR from mobile capture
- First tag or folder suggestions, which the wizard confirms

### 01-notes: writing notes
- Splitting a long capture into atomic notes, one idea each
- Finding existing notes on the same subject before writing a new one
- Filling front matter: `title`, `description`, `status`, `date`, `id`, `type`, `area`, `tags`
- Suggesting links, each with a reason

### 02-projects and 03-areas: maps
- Noticing clusters of five or more related notes and proposing an area map
- Proposing the reason line for each link in a map
- Spotting potential projects in an area map
- Writing a project's outcome when it ends, and marking it `status: replaced`

### 04-resources: captures
- Clipping a page, document or repository's docs into the right lettered folder, with `source:` in front matter, and keeping the original file out of git
- Checking links in captures for rot

### 05-archive: records
- Filing records that arrive finished, such as exports or snapshots, unchanged

## Checks that keep agents honest

Hand-kept lists go stale; checks keep them complete. CI runs the knowledge store check from the organize-repository skill on every change:

| Check | Fails when |
|---|---|
| root | the root holds anything but the top folders, the root files and dot files |
| names | a name breaks the naming rule |
| links | a relative link points to nothing |
| orphans | no chain of links from `README.md` reaches a file |
| twins | two written files have the same bytes |
| hubs | a hub leaves out a child, or a link has no description |
| maps | a note or resource is on no area or project map |
| folders | a folder in `01-notes/` or `04-resources/` is not a lettered kind or sub-kind folder |
| tasks | a task note lacks `type: task`, a `label` or a known `state` |
| tags | a note lacks its kind or month tag, or body text holds a `#tag` |

## Implementation strategies

### Progressive enhancement
1. **Start manual.** Use the INPARA workflow without AI.
2. **Add simple automation.** Capture and formatting tools.
3. **Add suggestions.** Links and placements you accept or reject.
4. **Automate what the checks can verify.** Keep the rest as suggestions.

### Tool categories
- **Semantic search:** embeddings and vector search to find related notes before writing a new one
- **Language processing:** entity extraction, summarization and link suggestions
- **Automation platforms:** workflow tools or small scripts that run capture and checks

### Tool selection criteria
- **Respects your data.** Local-first or privacy-conscious.
- **Plain files.** Works on Markdown folders, so the store outlives the tool.
- **Enhances rather than replaces** human decisions.
- **Provides value immediately** without extensive setup.

### Privacy considerations
- Local processing when possible
- Selective sharing with cloud AI services
- Anonymize sensitive content before it reaches a cloud service
- Keep data exportable as plain files, so no vendor holds it
- Keep work and personal stores separate

## Best practices

- **Start small.** One AI enhancement at a time, with a manual fallback.
- **Preserve human agency.** AI suggests, people decide.
- **Don't automate away valuable friction.** Writing a note in your own words is the point.

---

*AI should amplify your natural thinking patterns, not replace them.*
