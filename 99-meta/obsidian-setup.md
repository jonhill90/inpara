---
title: Obsidian setup
description: The theme, font, settings, plugins and snippets for reading an INPARA store in Obsidian, with the folders that tools need hidden.
status: current
date: 2026-11-08
id: 2026110801100010
type: meta
---

# Obsidian setup

Up: [Meta](99-meta.md)

An INPARA store is plain Markdown, so any editor reads it. These are the settings the source store uses in Obsidian. Obsidian keeps them in the vault's `.obsidian/` folder, which stays out of git (see `.gitignore`), so each machine sets them once.

## 1. Open the store as a vault

Open the repository's root folder as a vault: **Open folder as vault**, then pick the folder that holds `README.md`.

## 2. Font

Install **JetBrainsMono Nerd Font** from the [Nerd Fonts](https://www.nerdfonts.com/font-downloads) release page, then in **Settings → Appearance → Font** set all three to `JetBrainsMono Nerd Font Mono`:

| Setting | Value |
|---|---|
| Interface font | `JetBrainsMono Nerd Font Mono` |
| Text font | `JetBrainsMono Nerd Font Mono` |
| Monospace font | `JetBrainsMono Nerd Font Mono` |

## 3. Theme and accent

In **Settings → Appearance → Themes → Manage**, install **Vanilla AMOLED** (by Sakura Akeno Isayeki) and select it. Set **Accent color** to `#5cf575`.

## 4. Editor and links

| Setting | Where | Value |
|---|---|---|
| Default view for new tabs | Editor | Reading view |
| Use [[Wikilinks]] | Files and links | Off |
| New link format | Files and links | Relative path to file |

Relative Markdown links are what the store's checks follow ([inpara-formatting-standards.md](inpara-formatting-standards.md)).

## 5. Core plugins

Turn on: File explorer, Search, Quick switcher, Graph view, Backlinks, Outgoing links, Canvas, Tags view, Properties view, Page preview, Daily notes, Templates, Note composer, Command palette, Outline, Word count, Bookmarks, File recovery, Bases.

Set **Daily notes** to:

| Setting | Value |
|---|---|
| Date format | `YYYYMMDD` |
| New file location | `01-notes/01d-daily` |

This matches the day-log name rule (`01-notes/01d-daily/YYYYMMDD.md`).

## 6. Community plugins

In **Settings → Community plugins**, turn on community plugins, then install and enable:

| Plugin | Used for |
|---|---|
| Iconize | icons on folders and files |
| Dataview | tables and lists built from front matter |
| Tasks | task lists across day logs |
| Calendar | a calendar of day logs |
| Homepage | a start page when the vault opens |
| Templater | filling templates from `99-meta/templates/` |
| Kanban | boards |
| Outliner | moving list items |
| Excalidraw | drawings |
| Commander | buttons for common commands |
| Emoji Shortcodes | emoji by name |
| Advanced Slides | slides from Markdown |
| HTML Reader | opening the `.html` pages in the `pages` sub-kinds |

All of these are optional: the store works without any of them.

## 7. Graph colors

In **Graph view → Groups**, add one group per top folder:

| Query | Color |
|---|---|
| `path:00-inbox` | green `#00ff00` |
| `path:01-notes` | cyan `#00ffff` |
| `path:02-projects` | blue `#3b82f6` |
| `path:03-areas` | purple `#a855f7` |
| `path:04-resources` | magenta `#ff00ff` |
| `path:05-archive` | red `#ff0000` |

## 8. Hide what Obsidian cannot show

Save this as `.obsidian/snippets/hide-99-meta.css`, then enable it in **Settings → Appearance → CSS snippets**. It hides `99-meta/`, the root `README.md` and `AGENTS.md`, and the scripts and data sub-kinds from the file explorer. The files stay searchable and linkable.

```css
.nav-folder:has(> .nav-folder-title[data-path="99-meta"]) { display: none; }
.nav-file:has(> .nav-file-title[data-path="README.md"]),
.nav-file:has(> .nav-file-title[data-path="AGENTS.md"]) { display: none; }
/* script and data sub-kinds hold only code and data files: <letters>s-scripts, <letters>d-data */
.nav-folder:has(> .nav-folder-title[data-path$="s-scripts"]),
.nav-folder:has(> .nav-folder-title[data-path$="d-data"]) { display: none; }
```

Optional snippets from CyanVoxel color the sidebar by the `NN-` prefix (Colored Sidebar Items), give day logs a color per weekday (Daily Note Themes, which reads the `cssclasses` of a day log), and add notebook backgrounds (Notebook Backgrounds). Get them from their author; they are not copied here.
