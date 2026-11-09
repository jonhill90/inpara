---
title: <Name of the thing, as its author wrote it>
description: <One line: what it is and why our notes cite it>
status: current
date: YYYY-MM-DD
id: <YYYYMMDDhhmmss##>
type: resource
url: <where the thing lives: its URL>
area: [<area id>]
tags: [resource, <kind word>, <MM-YYYY>, <area id>]
---

# <Name of the thing>

<url>

A resource note is a link note: front matter, the link, and the list of our notes that cite it. It never holds a copy of the thing. Save it flat in its kind folder: `04-resources/04d-documents/` for a paper or document, `04c-clippings/` for a web page, `04l-learning/` for a course, `04v-video/` for a video, or `04h-harness/04hp-prompts/` for exported agent chat threads, named by the slug of its title. Set the kind word in `tags` to the folder's word (`document`, `clippings`, `course`, `video`, `harness`). A repository gets its note in `04r-repos/`, `<owner>-<repo>.md`, made by the store's script from the notes that cite it, not by hand. The text, PDF, video or repository is not kept in git: read it at its URL, or keep a local copy under `.cache/`, which git ignores. Delete this paragraph when you save.

## Cited by

- [<Our note that cites it>](<relative path>): <what it uses from it>
