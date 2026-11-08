---
title: <Title of the original, as its author wrote it>
description: <One line: what the original is and why it was kept>
status: current
date: YYYY-MM-DD
id: <YYYYMMDDhhmmss##>
type: clipping
source: <URL or where the original came from>
was: <the original's own file name or path, if it had one>
pin: <commit>:<path>, for a copy git once held
area: [<area id>]
tags: [resource, clippings, <MM-YYYY>, <area id>]
---

# <Title of the original>

A clipping is one doc's text as Markdown. Save it in its kind folder, flat, with no resource subfolders: `04-resources/04c-clippings/` for a web page or a document's text, `04r-repos/` for a repository's README or docs, `04l-learning/` for a course, `04v-video/` for a video's transcript, or `04h-harness/04hp-prompts/` for an exported agent chat thread. Name it by the slug of its title. Change the kind tag to the folder's word (`repo`, `course`, `video`, `harness`).

A resource with more than one doc gets one resource note `<resource>.md` in the same folder that links its clippings; a paper or document gets its resource note in `04d-documents/`. Only Markdown is in git: a PDF, video, repository copy, raw page or scraped dump stays local under `.cache/`, and the resource note records its source, the date, and each file's size and sha256. Delete these two paragraphs when you save.

<The captured text, unchanged. Our own notes about it go in `01-notes/` and link here.>
